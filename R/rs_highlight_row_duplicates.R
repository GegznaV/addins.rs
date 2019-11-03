#' @name highlight_row_duplicates
#' @title Highlight duplicates of selected rows.
#'
#' @description
#' Functions that highlight duplicates of selected lines:
#' \itemize{
#' \item{rs_highlight_first_row_duplicates() duplicates of the first selected
#'      row (the first row gets deselected);}
#' \item{rs_highlight_row_duplicates() duplicates of any selected row
#'      (except the first occurrence);}
#' \item{rs_highlight_row_duplicates_all() duplicates of any selected row
#'      (including the first occurrence).}
#' }
#' @inheritParams rs_align_code
#'
#' @export
#'
rs_highlight_first_row_duplicates <- function(context = rs_get_context()) {
    text        <- rs_get_selected_rows(context)
    row_numbers <- attr(text, "row_numbers")
    duplicates <- row_numbers[text == text[1]][-1]
    rs_select_rows(duplicates, context = context)
}

#' @rdname highlight_row_duplicates
#' @export
rs_highlight_row_duplicates_all <- function(context = rs_get_context()) {
    text        <- rs_get_selected_rows(context)
    row_numbers <- attr(text, "row_numbers")

    duplicates <- row_numbers[text %in% unique(text[duplicated(text)])]
    rs_select_rows(duplicates, context = context)
}

#' @rdname highlight_row_duplicates
#' @export
rs_highlight_row_duplicates <- function(context = rs_get_context()) {
    text        <- rs_get_selected_rows(context)
    row_numbers <- attr(text, "row_numbers")

    duplicates <- row_numbers[duplicated(text)]
    rs_select_rows(duplicates, context = context)
}

