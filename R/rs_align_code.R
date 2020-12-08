# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# @rdname align_code
# @export

# TODO: [+] create a new algorithm that aligns in selections only.

# rs_align_code__in_selectios <- function(at_symbol, context = rs_get_context()) {
#
#
#
# text        <- rs_get_selected_rows(context = context)
# row_numbers <- attr(text, "row_numbers")
#
# rez <-
#     stringr::str_locate(
#         pattern = at_symbol,
#         string  = text) %>%
#     as.data.frame() %>%
#     dplyr::mutate(
#         row    = row_numbers,
#         shift  = max(start, na.rm = TRUE) - start, # shift = n spaces to insert
#         spaces = make_spaces(shift) # spaces that create alignment
#     ) %>%
#     dplyr::filter(shift > 0) %>% # only rows which should be modified
#     dplyr::rename(col = start) %>%
#     dplyr::select(row, col, spaces)
#
# # Put indices into correct format
# locations <- split(as.matrix(rez[, c("row", "col")]), rez$row)
#
# purrr::walk2(
#     locations, rez$spaces,
#     ~ rstudioapi::insertText(.x, .y, context$id))
# }



# ============================================================================
#' Align code at certain symbols.
#'
#' In selected lines, align code at first occurrence of certain symbol in each
#' row.
#'
#' @note
#' Inspired by \url{https://github.com/seasmith/AlignAssign}.
#'
#' @name align_code
#'
#' @param at_symbol (character) \cr
#'        A regular expression that represents symbol treated as reference for
#'        code alignment.
#'
#' @param context (class \code{document_context}) \cr
#'        Object with context of active RStudio document.
#'
#' @param algorithm (\code{character}) \cr
#'        One of `"selection only"` and `"rows in selection"`.

NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Helper function. If a selection spans several lines of document, each line
# gets represented by a separate set of indices (each per row of the data frame)
one_line_per_row <- function(x) {
  # Data frame with columns:
  # x$start.row
  # x$end.row
  # x$start.column
  # x$end.column
  if (length(x$start.row) != 1 || x$start.row == x$end.row) {
    return(x)
  }

  r = x$start.row:x$end.row
  n_row = length(r)

  data.frame(
    start.row = r,
    start.column = c(x$start.column, rep(1, length = n_row - 1)),
    end.row = r,
    end.column = c(rep(Inf, length = n_row - 1), x$end.column)
  )
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
#
# This version of function will deprecate in the near future in favor to changes
# in selections only.
rs_align_code <- function(at_symbol, context = rs_get_context(),
                          algorithm = c("selection only", "rows in selection")) {
  algorithm <- match.arg(algorithm)

  switch(
    algorithm,
    "selection only" = {
      inds_of_interest <-
        dplyr::bind_cols(
          # Get selection indices: separate set of indices per row
          rs_get_selection_range("all", context = context) %>%
            purrr::map_dfr(unlist) %>%
            one_line_per_row(),

          # Get indices of selected text
          # (indices inside the selection)
          rs_get_selection_text("all", context = context) %>%
            stringr::str_split("\n") %>%
            unlist() %>%
            stringr::str_locate(pattern = at_symbol) %>%
            as.data.frame()
        ) %>%
        dplyr::transmute(
          row = start.row,
          start = start + start.column - 1,
          end = end + start.column - 1
        )
    },
    "rows in selection" <- {
      inds_of_interest <- {
        text <- rs_get_selected_rows(context = context)
        text %>%
          stringr::str_locate(pattern = at_symbol) %>%
          as.data.frame() %>%
          dplyr::mutate(row = attr(text, "row_numbers"))
      }
    }
  )

  rez <-
    inds_of_interest %>%
    dplyr::filter(!is.na(start))

  if (nrow(rez) == 0) {
    return()
  }

  rez <-
    rez %>%
    dplyr::mutate(
      shift  = max(start, na.rm = TRUE) - start, # shift = n spaces to insert
      spaces = make_spaces(shift) # spaces that create alignment
    ) %>%
    dplyr::filter(shift > 0) %>% # only rows which should be modified
    dplyr::rename(col = start) %>%
    dplyr::select(row, col, spaces)

  if (nrow(rez) == 0) {
    return()
  }

  # Put indices into correct format
  locations <- split(as.matrix(rez[, c("row", "col")]), rez$row)

  purrr::walk2(
    locations, rez$spaces,
    ~ rstudioapi::insertText(location = ..1, text = ..2, id = context$id)
  )
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_equal <- function(context = rs_get_context()) {
  rs_align_code(stringr::fixed("="), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_arrow <- function(context = rs_get_context()) {
  rs_align_code(stringr::fixed("<-"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_pipe_operator <- function(context = rs_get_context()) {
  rs_align_code(stringr::fixed("%>%"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_hash <- function(context = rs_get_context()) {
  rs_align_code(stringr::fixed("#"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_vertical_bar <- function(context = rs_get_context()) {
  rs_align_code(stringr::fixed("|"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

