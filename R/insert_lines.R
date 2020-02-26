# Insert lines ---------------------------------------------------------------

#' @name insert_line
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
#' @param symbol (character) \cr
#'        The symbol that will be repeated to create a line.
#' @param start (numeric) \cr
#'        The number of column the line begins at.
#' @param end (numeric) \cr
#'        The number of column the line ends at.
#'
#' @family 'Insert at cursor position' addins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_line
#' @export
rs_insert_line <- function(symbol, start = rs_get_index_first_selected_col(), end = 79) {
    rs_insert_symbol_seq(symbol, start[1], end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_line
#' @export
rs_insert_line_ss <- function() {
    rs_insert_line("-")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_line
#' @export
rs_insert_line_ds <- function() {
    rs_insert_line("=")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_line
#' @export
rs_insert_line_sw <- function() {
    rs_insert_line("~")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
