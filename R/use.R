#' Designate an RDA File for Notekeeping
#'
#' This creates the RDA file if it does not exist yet. It also
#' has a side-effect by storing the file's path in a hidden
#' way that can be discovered by calling [whichRDA()], which
#' is used by [retrieveRDA()] and [storeRDA()].
#'
#' @template rdaTemplate
#'
#' @export
#'
#' @author Dan Kelley
useRDA <- function(rda = "notes.rda") {
    if (!file.exists(rda)) {
        dmsg("creating RDA file \"", rda, "\"")
        notes <- list() # stores name, value, comment and context
        save(notes, file = rda)
    }
    rdanEnv[["rda"]] <- rda
}
