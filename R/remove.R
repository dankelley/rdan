#' Remove a Value From an RDA file
#'
#' This removes a value from an RDA notebook file.
#'
#' @param name character value indicating the name of the quantity
#' to be removed.
#'
#' @template rdaTemplate
#'
#' @examples
#' library(rdan)
#' rdaFile <- tempfile(pattern = "rdan", fileext = ".rda")
#' useRDA(rdaFile)
#' storeRDA("2pi", 2 * pi, "circle perimeter divided by radius")
#' retrieveRDA("2pi")
#' storeRDA("4pi", 4 * pi, "twice 2pi")
#' listRDA()
#' removeRDA("2pi")
#' listRDA()
#' removeRDA("4pi")
#' listRDA()
#' # Clean up
#' file.remove(rdaFile)
#'
#' @export
#'
#' @author Dan Kelley
removeRDA <- function(name = NULL, rda = whichRDA()) {
    # message("rda='", rda, "'")
    if (!file.exists(rda)) {
        stop("RDA file \"", rda, "\" does not exist yet; call useRDA() first")
    }
    load(rda) # defines 'notes'
    if (name %in% names(notes)) {
        notes[[name]] <- NULL
        save(notes, file = rda)
    }
}
