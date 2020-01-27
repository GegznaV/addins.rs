# FIXME: temporary function. Remove when not needed.
#' @rdname align_code
#' @export
rs_align_code_at_vertical_colon <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed(" : "), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# FIXME: temporary function. Remove when not needed.
#' @rdname align_code
#' @export
rs_align_code_at_tab <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("\\tab"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# FIXME: temporary function. Remove when not needed.
#' @rdname align_code
#' @export
rs_align_code_at_role <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("role ="), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# FIXME: temporary function. Remove when not needed.
#' @rdname align_code
#' @export
rs_align_code_at_space <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed(","), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Name: {RS} Align code at ` : `
Description: Align code in selected lines at first occurance of sequence ` : `.
Binding: rs_align_code_at_vertical_colon
Interactive: false

Name: {RS} Align code at `\tab`
Description: Align code in selected lines at first occurance of sequence `\tab`.
Binding: rs_align_code_at_tab
Interactive: false

Name: {RS} Align code at comma `,`
Description: Align code in selected lines at first occurance of sequence `,`.
Binding: rs_align_code_at_space
Interactive: false

Name: {RS} Align code at `role =`
Description: Align code in selected lines at first occurance of sequence `role =`.
Binding: rs_align_code_at_role
Interactive: false

# =============================================================================
# Operators from other packages -----------------------------------------------
# =============================================================================

#' Insert \%!in\%.
#'
#' Call this function as an add-in to insert \code{ \%!in\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#' @family 'Insert at cursor position' add-ins
#' @seealso Operator \link[base]{\%in\%}.
rs_insert_infix_not_in <- function(context = rs_get_context()) {
    rs_insert_text(text = "%!in%", context = context, spaces = TRUE)
}

# Name: {RS} Insert operator %!in%
# Description: Insert `%!in%` at the cursor position.
# Binding: rs_insert_infix_not_in
# Interactive: false
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#
#' Insert \%R\%.
#'
#' Call this function as an add-in to insert \code{ \%R\% } at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @note Operator does not work unless package which contains this operator is loaded.
#'
#' @export
#'
#' @seealso Operator \link[rebus.base]{\%R\%} in \pkg{rebus}.
#' @family 'Insert at cursor position' add-ins
#'
rs_insert_infix_R <- function(context = rs_get_context()) {
    rs_insert_text(text = "%R%", context = context, spaces = TRUE)
}

