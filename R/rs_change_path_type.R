# 'Replace selected symbols' addins ---------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Change path type.
#'
#' Change path from absolute to relative and vice versa.
#'
#' @name path_type
#' @export
rs_to_absolute_path <- function() {
  rs_replace_path_type(to = "D:/Dokumentai/R/addins.rs/absolute")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname path_type
#' @export
rs_to_relative_path <- function() {
  rs_replace_path_type(to = "relative")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rs_replace_path_type <- function(to = c("relative", "absolute"), start_dir = getwd(),
  keep_selected = TRUE, selection = c("all", "first", "last"), context = rs_get_context())
{
  if (context$contents == "") {
    return()
  }

  to        <- match.arg(to)
  selection <- match.arg(selection)

  switch(to,
    relative = {
      msg <- "Converting path to relative path. \n"
      fun <- fs::path_rel
    },

    absolute = {
      msg <- "Converting path to absolute path. \n"
      fun <- fs::path_abs
    },

    stop("Choose the type of conversion: to relative or to absolute path.")
  )

  old_text  <- rs_get_selection_text(selection  = selection, context = context)
  old_range <- rs_get_selection_range(selection = selection, context = context,
    as_list = TRUE)

  new_text <- fun(old_text, start = start_dir)

  rstudioapi::modifyRange(location = old_range, text = new_text, id = context$id)

  if (keep_selected) {
    addin.tools:::select_correct_range(old_text, new_text, old_range, id = context$id)
  }
  message(
    msg,
    "      Input: ", old_text, "\n",
    "Relative to: ", start_dir, "\n",
    "     Result: ", new_text, "\n"
  )
}
