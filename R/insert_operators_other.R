
# Base R operators ------------------------------------------------------------



# =============================================================================
#' Insert \%*\%.
#'
#' Call this function as an add-in to insert \code{ \%*\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @export
#' @seealso Operator \link[base]{\%*\%} for matrix multiplication.
#'
#' @family 'Insert at cursor position' add-ins
rs_insert_matrix_multiplication <- function(context = rs_get_context()) {
    # rstudioapi::insertText(text = " %*% ")
    rs_insert_text(text = "%*%", context = context, spaces = TRUE)
}


#' Insert \%in\%.
#'
#' @description Call this function as an add-in to insert \code{ \%in\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_ind
#' @export
#' @seealso Operator \link[base]{\%in\%}.
#'
#' @family 'Insert at cursor position' add-ins
rs_insert_infix_in <- function(context = rs_get_context()) {
    # rstudioapi::insertText(text = " %in% ")
    rs_insert_text(text = "%in%", context = context, spaces = TRUE)
}

#' Insert \%!in\%.
#'
#' Call this function as an add-in to insert \code{ \%!in\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#' @family 'Insert at cursor position' add-ins
#' @seealso Operator \link[base]{\%in\%}.
rs_insert_infix_not_in <- function(context = rs_get_context()) {
    # rstudioapi::insertText(text = " %!in% ")
    rs_insert_text(text = "%!in%", context = context, spaces = TRUE)
}



#' Insert \%R\%.
#'
#' Call this function as an add-in to insert \code{ \%R\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @export
#'
#' @seealso Operator \link[rebus.base]{\%R\%} in \pkg{rebus}.
#' @family 'Insert at cursor position' add-ins
#'
rs_insert_infix_R <- function(context = rs_get_context()) {
    # rstudioapi::insertText(text = " %R% ")
    rs_insert_text(text = "%R%", context = context, spaces = TRUE)
}

#' Insert \%\%.
#'
#' Call this function as an add-in to insert \code{ \%\% } at the cursor position.
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @export
#'
#' @family 'Insert at cursor position' add-ins
#'
rs_insert_infix_operator <- function(context = rs_get_context()) {
    rs_enclose_selection_with(symbol = "%")
}
