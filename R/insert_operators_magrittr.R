# From `magrittr` ---------------------------------------------------------
# Insert %>%, %<>%, %$% and %T>%
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_magrittr_operators
#'
#' @title Insert magrittr operators.
#'
#' @description These add-ins insert operators `%>%`, `%<>%`,
#'  `%$%`,
#' and `%T>%` at the cursor position.
#' The operators are defined in package \pkg{magrittr}.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @note Operator does not work unless package \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso
#' \itemize{
#'    \item Forward pipeline operator [%>%][magrittr::%>%]
#'    \item Compound assignment pipe operator [%<>%][magrittr::%<>%]
#'    \item Exposition pipe operator [%$%][magrittr::%$%] and operator [$][base::$]
#'    \item Tee operator [%T>%][magrittr::%T>%]
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
