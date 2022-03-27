# ----------------------------------------------------------------------------
#' @rdname align_code
#' @export
rs_addins_options <- function(context = rs_get_context()) {

  ui <- miniPage(
    gadgetTitleBar("Options"),
    tags$style("#line_end {font-family: monospace; font-size:14px; font-weight:bold;}"),
    miniContentPanel(
      stableColumnLayout(
        h5("line_end (1-80):"),
        tags$textarea(
          id = "line_end", rows =  1, cols = 5,
          options("addins.rs.line_end"), # values
          autofocus = "autofocus",
          onfocus = "this.selectionEnd = this.value.length;"
        )
      )
    )
  )

  on_done <- function(input) {
    line_end <- as.integer(input$line_end)
    if (!is.na(line_end)) options("addins.rs.line_end" = line_end)

    stopApp()
  }

  on_cancel <- function(input) {stopApp(); return()}

  server <- function(input, output, session) {
    observeEvent(input$done,   on_done(input))
    observeEvent(input$cancel, on_cancel(input))
  }

  viewer <- dialogViewer("Options for Package 'addins.rs'", width = 200, height = 100)

  suppressPackageStartupMessages(suppressMessages(
    runGadget(ui, server, viewer = viewer)
  ))
}
