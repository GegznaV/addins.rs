addins_env <- new.env()

rs_get_context_addin <- function(variables) {
  rstudio_context <- addin.tools::rs_get_context()
  addins_env$context <- rstudio_context

  rstudioapi::sendToConsole(
    paste0(
      "# To access the contents, use code: \n",
      "context <- addins.rs:::get_saved_context()"
    ),
    execute = FALSE
  )
}

get_saved_context <- function() {
  addins_env$context
}

rs_is_visual_editor <- function(variables) {
  in_visual_mode <- addin.tools::is_visual_editor()
  addins_env$is_visual_editor <- in_visual_mode

  rstudioapi::sendToConsole(
    paste0(
      "# To access the mode, use code: \n",
      "rmd_mode <- addins.rs:::get_saved_rmd_mode()"
    ),
    execute = FALSE
  )
}

get_saved_rmd_mode <- function() {
  addins_env$is_visual_editor
}
