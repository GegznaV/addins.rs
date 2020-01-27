# =============================================================================
# Base R operators ------------------------------------------------------------
# =============================================================================


#' Insert \%*\%.
#'
#' Call this function as an add-in to insert \code{ \%*\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @export
#' @seealso Operator \link[base]{\%*\%} for matrix multiplication.
#'
#' @family 'Insert at cursor position' add-ins
rs_insert_matrix_multiplication <- function(context = rs_get_context()) {
    # rstudioapi::insertText(text = " %*% ")
    rs_insert_text(text = "%*%", context = context, spaces = TRUE)
}

#' Insert \%/\%.
#'
#' @description Call this function as an add-in to insert \code{ \%/\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#' @export
#' @seealso Operator \link[base]{\%/\%}.
#'
#' @family 'Insert at cursor position' add-ins
rs_insert_integer_division <- function(context = rs_get_context()) {
    rs_insert_text(text = "%/%", context = context, spaces = TRUE)
}

#' Insert \%\%.
#'
#' Call this function as an add-in to insert \code{ \%\% } at the cursor position.
#'
#' @note Operator does not work unless package which contains this operator is loaded.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @export
#'
#' @family 'Insert at cursor position' add-ins
#'
rs_insert_modulo <- function(context = rs_get_context()) {
    rs_insert_text(text = "%%", context = context, spaces = TRUE)
}


#' Insert \%in\%.
#'
#' @description Call this function as an add-in to insert \code{ \%in\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#' @export
#' @seealso Operator \link[base]{\%in\%}.
#'
#' @family 'Insert at cursor position' add-ins
rs_insert_infix_in <- function(context = rs_get_context()) {
    rs_insert_text(text = "%in%", context = context, spaces = TRUE)
}

