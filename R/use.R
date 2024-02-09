#' Designate an RDA File for Notekeeping
#'
#' This creates the RDA file if it does not exist yet. It also
#' has a side-effect by storing the file's path in a hidden
#' way that can be discovered by calling [whichRDA()], which
#' is used by [retrieveRDA()] and [storeRDA()].
#'
#' @template rdaTemplate
#'
#' @template debugTemplate
#'
#' @export
#'
#' @author Dan Kelley
useRDA <- function(rda = "rdan.rda", debug = 0) {
    if (!file.exists(rda)) {
        dmsg(debug, "creating RDA file \"", rda, "\"")
        results <- list() # stores name, value, comment and context
        save(results, file = rda)
    }
    rdanEnv[["rda"]] <- rda
}