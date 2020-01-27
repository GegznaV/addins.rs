# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# @rdname align_code
# @export

# TODO: create a new algorithm that aligns in selections only.

# rs_align_code__in_selectios <- function(at_symbol, context = rs_get_context()) {
#
#
#
# text        <- rs_get_selected_rows(context = context)
# row_numbers <- attr(text, "row_numbers")
#
# rez <-
#     stringr::str_locate(
#         pattern = at_symbol,
#         string  = text) %>%
#     as.data.frame() %>%
#     dplyr::mutate(
#         row    = row_numbers,
#         shift  = max(start, na.rm = TRUE) - start, # shift = n spaces to insert
#         spaces = make_spaces(shift) # spaces that create alignment
#     ) %>%
#     dplyr::filter(shift > 0) %>% # only rows which should be modiffied
#     dplyr::rename(col = start) %>%
#     dplyr::select(row, col, spaces)
#
# # Put indices into correct format
# locations <- split(as.matrix(rez[, c("row", "col")]), rez$row)
#
# purrr::walk2(
#     locations, rez$spaces,
#     ~ rstudioapi::insertText(.x, .y, context$id))
# }



# ============================================================================
#' Align code at certain symbols.
#'
#' In selected lines, align code at first occurance of certain symbol in each row.
#'
#' @note
#' Inspired by \url{https://github.com/seasmith/AlignAssign}.
#'
#' @name align_code
#'
#' @param at_symbol (character) \cr
#'        A regular expression that represents symbol treated as reference for
#'        code alignment.
#'
#' @param context (class \code{document_context}) \cr
#'        Object with context of active RStudio document.

NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
#
# This version of function will deprecate in the near future in favor to changes
# in selections only.
rs_align_code <- function(at_symbol, context = rs_get_context()) {
    text        <- rs_get_selected_rows(context = context)
    row_numbers <- attr(text, "row_numbers")

    rez <-
        stringr::str_locate(pattern = at_symbol, string = text) %>%
        as.data.frame() %>%
        dplyr::mutate(
            row    = row_numbers,
            shift  = max(start, na.rm = TRUE) - start, # shift = n spaces to insert
            spaces = make_spaces(shift) # spaces that create alignment
        ) %>%
        dplyr::filter(shift > 0) %>% # only rows which should be modiffied
        dplyr::rename(col = start) %>%
        dplyr::select(row, col, spaces)

    # Put indices into correct format
    locations <- split(as.matrix(rez[, c("row", "col")]), rez$row)

    purrr::walk2(
        locations, rez$spaces,
        ~ rstudioapi::insertText(location = .x, text = .y, id = context$id)
    )
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_equal <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("="), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_arrow <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("<-"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_pipe_operator <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("%>%"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_hash <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("#"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname align_code
#' @export
rs_align_code_at_vertical_bar <- function(context = rs_get_context()) {
    rs_align_code(stringr::fixed("|"), context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

