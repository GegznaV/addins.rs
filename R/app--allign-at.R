# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# TODO: Function stableColumnLayout() is coppied from:
# https://github.com/rstudio/addinexamples/blob/fae960911302ed2ca3139b47500e7606233e1390/R/utils.R
stableColumnLayout <- function(...) {
  dots <- list(...)
  n <- length(dots)
  width <- 12 / n
  class <- sprintf("col-xs-%s col-md-%s", width, width)
  fluidRow(
    lapply(dots, function(el) {
      div(class = class, el)
    })
  )
}

# ----------------------------------------------------------------------------
#' @rdname align_code
#' @export
rs_align_code_at_pattern <- function(context = rs_get_context()) {

  ui <- miniPage(
    gadgetTitleBar("Align code at"),
    tags$style("#pattern {font-family: monospace; font-size:14px; font-weight:bold;}"),
    miniContentPanel(
      stableColumnLayout(h5("Pattern:")),
      stableColumnLayout(
        tags$textarea(id = "pattern", rows =  1, cols = 30, "",
          autofocus = "autofocus")),

        # textInput("pattern2", "Pattern:")),
      stableColumnLayout(checkboxInput("regex", "Regex", value = FALSE))
    )
  )

  on_done <- function(input) {
      pattern <- input$pattern
      if (pattern == "") {
        stopApp()
        return()
      }

      patt_type <- if (input$regex) {stringr::regex} else {stringr::fixed}
      rs_align_code(at_symbol = patt_type(pattern), context = context)
      stopApp()
    }

  server <- function(input, output, session) {

    observeEvent(input$done, on_done(input))
  }
  viewer <- dialogViewer("Align code at selected pattern", width = 200, height = 100)

  suppressPackageStartupMessages(suppressMessages(
    runGadget(ui, server, viewer = viewer)
  ))
}
