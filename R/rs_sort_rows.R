#' @name sort_rows
#' @title Sort selected lines.
#'
#' @description
#' Functions sort selected lines. And sort numbers as numbers not alphabetically.
#'
#' @inheritParams gtools::mixedsort
#' @inheritParams rs_align_code
#'
#' @export
#' @note
#' Inspired by <https://github.com/dcomtois/sortLines>.
#'
rs_sort_rows <- function(decreasing = FALSE, numeric.type = "decimal",
    context = rs_get_context()) {

    text        <- rs_get_selected_rows(context)
    row_numbers <- attr(text, "row_numbers")
    old_ranges  <- rs_get_row_ranges(row_numbers, context = context)

    sorted_text <- gtools::mixedsort(
        text,
        decreasing   = decreasing,
        numeric.type = numeric.type,

        roman.case   = "both",
        na.last      = TRUE,
        blank.last   = TRUE
    )

    rstudioapi::insertText(
        location = old_ranges,
        text = sorted_text,
        id = context$id)

    rs_select_rows(row_numbers, context = context)
}

#' @rdname sort_rows
#' @export
rs_sort_rows_ascending <- function(context = rs_get_context()) {
    rs_sort_rows(decreasing = FALSE, context = context)
}

#' @rdname sort_rows
#' @export
rs_sort_rows_descending <- function(context = rs_get_context()) {
    rs_sort_rows(decreasing = TRUE, context = context)
}

