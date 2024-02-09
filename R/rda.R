rdanEnv <- new.env(parent = emptyenv())

#' Find name of RDA file
#'
#' Until [useRDA()] is called, this will be `RDAN.rda`, but after
#' that, it is the value specified in the call to [useRDA()].
#'
#' @export
whichRDA <- function() {
    if ("rda" %in% names(rdanEnv)) rdanEnv$rda else "RDAN.rda"
}

#' Possibly print a debugging message
#'
#' @param debug integer (or logical, which will be converted to
#' an integer) that controls printing. If `debug`
#' this exceeds 0, then the `...` values are printed using [cat()].
#'
#' @param ... passed to [cat()], which prints the message.
#'
#' @export
#'
#' @author Dan Kelley
dmsg <- function(debug, ...) {
    debug <- as.integer(debug)
    if (debug > 0) cat(...)
}

## demo (BROKEN! fix and put in docs somewhere)
# useRDA(clear = TRUE)
# readRDA("test")
# stopifnot(is.null(readRDA("test")))
# writeRDA("test", 999)
# stopifnot(identical(list(value = 999, comment = ""), readRDA("test")))
# writeRDA("test", list(A = 1, B = 2), "a list")
# stopifnot(identical(A, list(value = list(A = 1, B = 2), comment = "a list")))
