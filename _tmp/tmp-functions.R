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
