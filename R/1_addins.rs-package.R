#' @name addins.rs
#' @docType package
#'
#' @title A Set of RStudio Add-ins.
#'
#'
#' @description
#'
#' Package **`addins.rs`** provides a set of RStudio add-ins that
#' are designed to be used in combination with user-defined RStudio keyboard
#' shortcuts. These add-ins either insert text at the cursor position (e.g. insert
#' operators `%>%`, `<<-`, `%$%`, etc.) or replace symbols
#' in selected pieces of text, e.g., convert back-slashes to forward-slashes.\cr
#'
#' `License:` MIT   \cr
#' `URL:` <https://github.com/GegznaV/addins.rs> \cr
#' `Bug reports and suggestions:` <https://github.com/GegznaV/addins.rs/issues> \cr
#' `Author:` Vilmantas Gegzna
#'
#'
#' @seealso
#'
#' Use the links below to learn more about RStudio add-ins
#' and especially how to use them in combination with user-defined
#' keyboard shortcuts:\enumerate{
#'
#' \item{[RStudio add-ins](https://rstudio.github.io/rstudioaddins/);}
#' \item{[Keyboard shortcuts](https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts);}
#' \item{[Customizing keyboard shortcuts.](https://support.rstudio.com/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts)}
#' }
#'
#'
#' @import addin.tools
#' @import shiny
#' @import miniUI
#' @importFrom magrittr "%>%"
#' @importFrom utils globalVariables


utils::globalVariables(c("start", "shift", "spaces"))

.onLoad <- function(libname, pkgname) {
  options(
    addins.rs.line_end = 79
  )
}
