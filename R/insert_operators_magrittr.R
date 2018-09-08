# From `magrittr` ---------------------------------------------------------
# Insert \%>\%, \%<>\%, \%$\% and \%T>\%
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_magrittr_operators
#'
#' @title Insert magrittr operators.
#'
#' @description These add-ins insert operators \code{\%>\%}, \code{\%<>\%},
#'  \code{\%$\%},
#' and \code{\%T>\%} at the cursor position.
#' The operators are defined in package \pkg{magrittr}.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @note Operator does not work unless package \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso
#' \itemize{
#'    \item Forward pipeline operator \link[magrittr]{\%>\%}
#'    \item Compound assignment pipe operator \link[magrittr]{\%<>\%}
#'    \item Exposition pipe operator \link[magrittr]{\%$\%} and operator \link[base]{$}
#'    \item Tee operator \link[magrittr]{\%T>\%}
#' }
#'
#' @family 'Insert at cursor position' add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_magrittr_operators
#' @export
rs_insert_pipe <- function(context = rs_get_context()) {
    rs_insert_text(text = "%>%", context = context, spaces = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_magrittr_operators
#' @export
rs_insert_update_pipe <- function(context = rs_get_context()) {
    rs_insert_text(text = "%<>%", context = context, spaces = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_magrittr_operators
#' @export
rs_insert_exposition_pipe <- function(context = rs_get_context()) {
    rs_insert_text(text = "%$%", context = context, spaces = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_magrittr_operators
#' @export
rs_insert_tee_pipe <- function(context = rs_get_context()) {
    rs_insert_text(text = "%T>%", context = context, spaces = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
