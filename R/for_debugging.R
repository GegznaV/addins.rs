addins_env <- new.env()

rs_get_context_addin <- function(variables) {
  rstudio_context <- addin.tools::rs_get_context()
  addins_env$context <- rstudio_context

  rstudioapi::sendToConsole(
    "# To access the contents, use code: \naddins.rs:::get_saved_context()",
    execute = FALSE
    )
}

get_saved_context <- function() {
  addins_env$context
}
