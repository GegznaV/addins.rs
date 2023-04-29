# Comment/Uncomment ----------------------------------------------------------

#' @name comment
#' @title Comment/Uncomment selected lines
#' @description
#' Comment or uncomment selected lines.
#'
#'
#' @family 'Comment' addins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name comment
#' @export
rs_comment_uncomment <- function() {
    rstudioapi::executeCommand("commentUncomment", quiet = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
