# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_quotes
#'
#' @title Insert quotes
#'
#' @description These add-ins insert quotation symbols (e.g., `„`, `“`, and `”`)
#' at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#' @md
#'
#' @family 'Insert quotes' add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_quotes
#' @export
rs_insert_quotes_double_lower <- function(context = rs_get_context()) {
    rs_insert_text(text = "\u201e", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_quotes
#' @export
rs_insert_quotes_double_upper_c <- function(context = rs_get_context()) {
    rs_insert_text(text = "\u201c", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_quotes
#' @export
rs_insert_quotes_double_upper_d <- function(context = rs_get_context()) {
    rs_insert_text(text = "\u201d", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

