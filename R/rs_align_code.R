# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Align code at certain symbols.
#'
#' Align code of selected lines at first occurance of certain symbol.
#'
#' @note
#' Inspired by: \url{https://github.com/seasmith/AlignAssign}
#'
#' @name rs_align_code
#' @param at_symbol (character) A regular expression that represents
#'  symbol treated as reference for code alignment.
#' @param context Object with context of active RStudio document
#'                (class \code{document_context}).
#'
#' @export
#'
rs_align_code <- function(at_symbol, context = rs_get_context()) {
    text        <- rs_get_selected_rows(context = context)
    row_numbers <- attr(text, "row_numbers")

    rez <-
        stringr::str_locate(pattern = at_symbol,
                            string  = text) %>%
        as.data.frame() %>%
        dplyr::mutate(row    = row_numbers,
                      shift  = max(start, na.rm = TRUE) - start, # shift = n spaces to insert
                      spaces = make_spaces(shift) # spaces that create alignment
        ) %>%
        dplyr::filter(shift > 0) %>% # only rows which should be modiffied
        dplyr::rename(col = start) %>%
        dplyr::select(row, col, spaces)

    # Put indices into correct format
    locations <- split(as.matrix(rez[, c("row", "col")]), rez$row)

    purrr::walk2(locations, rez$spaces,
                 ~ rstudioapi::insertText(.x, .y, context$id))
}

#' @rdname rs_align_code
#' @export
rs_align_code_at_equal <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("="), context = context)
}

#' @rdname rs_align_code
#' @export
rs_align_code_at_arrow <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("<-"), context = context)
}

#' @rdname rs_align_code
#' @export
rs_align_code_at_pipe <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("%>%"), context = context)
}

#' @rdname rs_align_code
#' @export
rs_align_code_at_hash <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("#"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ------------ #333333
# ------------   # 222222
# ------------ #111111
                dc <- rs_get_context()
