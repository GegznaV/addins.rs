#' Enclose with \%\%.
#'
#' Call this function as an add-in to enclose selected text with percent operator \code{ \% }.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @export
#'
#' @family 'Insert at cursor position' add-ins
#'
rs_enclose_with_percent <- function(context = rs_get_context()) {
    rs_enclose_selection_with(symbol = "%", context = context)
}
