#' List Names of Values in an RDA Notebook
#'
#' This returns a vector of strings holding the names
#' of items in the RDA notebook.
#'
#' @template rdaTemplate
#'
#' @return [listRDA] returns a vector of strings holding the names
#' of items in the RDA notebook.
#'
#' @export
#'
#' @author Dan Kelley
listRDA <- function(rda = whichRDA()) {
    if (!file.exists(rda)) {
        stop("RDA file \"", rda, "\" does not exist yet; call useRDA() first")
    }
    names(get(load(rda)))
}
