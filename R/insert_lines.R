# Insert lines ---------------------------------------------------------------

#' @name insert_lines
#' @title Insert various lines.
#' @description
#' These functions insert sequence of symbols (the line) which by default starts
#' at the cursor position and ends at symbol (column) 79. (It is recommended that
#' the line of code would not be longer than 80 symbols.)
#'
#' Use
#' \code{rs_insert_line_ss()} to insert \code{------};\cr
#' \code{rs_insert_line_ds()} to insert \code{======};\cr
#' \code{rs_insert_line_sw()} to insert \code{~~~~~~} at the cursor position.
#'
#' @param start (numeric) The number of column the line begins at.
#' @param end (numeric) The number of column the line ends at.
#' @inheritParams addin.tools::rs_get_index
#'
#' @family 'Insert at cursor position' addins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_lines
#' @export
rs_insert_line_ss <- function(start = rs_get_first_selected_col_index(), end = 79) {
    rs_insert_symbol_seq("-", start[1], end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_lines
#' @export
rs_insert_line_ds <- function(start = rs_get_first_selected_col_index(), end = 79) {
    rs_insert_symbol_seq("=", start[1], end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_lines
#' @export
rs_insert_line_sw <- function(start = rs_get_first_selected_col_index(), end = 79) {
    rs_insert_symbol_seq("~", start[1], end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
