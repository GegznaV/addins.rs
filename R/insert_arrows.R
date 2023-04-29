# Arrows ------------------------------------------------------------------

#' Insert arrow (->, ->>, <-, <<-)
#'
#' RStudio add-in to insert either `->`, `->>`,
#' `<-` or `<<-` at the cursor position.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @export
#' @note use hotkeys combination \kbd{ALT} + \kbd{-} to insert `<-` in RStudio.
#'
#' @seealso Assignment operators [assignOps][base::assignOps].\cr
#' @examples
#' \dontrun{
#' \donttest{
#' library(addins.rs)
#'
#' rs_insert_arrow_rl()
#' ## <-
#'
#' rs_insert_arrow_rl2()
#' ## <<-
#'
#' rs_insert_arrow_lr()
#' ## ->
#'
#' rs_insert_arrow_lr2()
#' ## ->>
#' }
#' }
#' @name insert_arrows
#' @family 'Insert at cursor position' addins
rs_insert_arrow_rl <- function(context = rs_get_context()) {
    rs_insert_text(text = "<-", context = context, spaces = TRUE)
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_rl2 <- function(context = rs_get_context()) {
    rs_insert_text(text = "<<-", context = context, spaces = TRUE)
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_lr <- function(context = rs_get_context()) {
    rs_insert_text(text = "->", context = context, spaces = TRUE)
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_lr2 <- function(context = rs_get_context()) {
    rs_insert_text(text = "->>", context = context, spaces = TRUE)
}
