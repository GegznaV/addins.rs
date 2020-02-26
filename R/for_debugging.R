addins_env <- new.env()

rs_get_context_addin <- function(variables) {
  rstudio_context <- addin.tools::rs_get_context()
  addins_env$context <-
    assign(
      paste0("rstudio_context_", make.names(Sys.time())),
      rstudio_context,
      envir = .GlobalEnv
    )
}
