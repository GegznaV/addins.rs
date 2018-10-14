#' Insert date and time.
#'
#' RStudio add-in to insert date and time at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @export
#' @rdname insert_datatime
rs_insert_datetime <- function(context = rs_get_context()) {
    txt <- format(Sys.time(), "%Y-%m-%d %T")
    rs_insert_text(text = txt, context = context, spaces = TRUE)
}

#' @export
#' @rdname insert_datatime
rs_insert_date <- function(context = rs_get_context()) {
    txt <- format(Sys.time(), "%Y-%m-%d")
    rs_insert_text(text = txt, context = context, spaces = TRUE)
}

#' @export
#' @rdname insert_datatime
rs_insert_time <- function(context = rs_get_context()) {
    txt <- format(Sys.time(), "%T")
    rs_insert_text(text = txt, context = context, spaces = TRUE)
}
