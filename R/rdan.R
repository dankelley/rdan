rdanEnv <- new.env(parent = emptyenv())
rdanEnv$debug <- FALSE

#' Find name of RDA file
#'
#' Until [useRDA()] is called, this will be `RDAN.rda`, but after
#' that, it is the value specified in the call to [useRDA()].
#'
#' @export
whichRDA <- function() {
    if ("rda" %in% names(rdanEnv)) rdanEnv$rda else "RDAN.rda"
}

#' Possibly Print a Debugging Message
#'
#' Print a debugging message, if [debugStatus()] returns TRUE,
#' i.e. if [debugOn()] has been called, without a subsequent
#' call to [debugOff()].
#'
#' @param ... passed to [cat()], which prints the message.
#'
#' @export
#'
#' @author Dan Kelley
dmsg <- function(...) {
    if (rdanEnv$debug) cat(...)
}

#' Turn Debugging On
#'
#' @export
#'
#' @author Dan Kelley
debugOn <- function()
{
    rdanEnv$debug <- TRUE
}

#' Turn Debugging Off
#'
#' @export
#'
#' @author Dan Kelley
debugOff <- function()
{
    rdanEnv$debug <- FALSE
}

#' Turn Debugging Off
#'
#' @export
#'
#' @author Dan Kelley
debugStatus <- function()
{
    rdanEnv$debug
}
