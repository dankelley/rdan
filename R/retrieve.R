#' Retrieve a Value from the RDA Notebook
#'
#' This returns a list with items named `value`,
#' `description`, and `context`, as set by [storeRDA()].
#'
#' @param name character value naming the item, as set by [storeRDA()].
#'
#' @template rdaTemplate
#'
#' @return [retrieveRDA] returns a list containing `name`, `value`, `description` and
#' `context`, as set by the previous call to [storeRDA()].
#'
#' @export
#'
#' @author Dan Kelley
retrieveRDA <- function(name = NULL, rda = whichRDA()) {
    if (!file.exists(rda)) {
        stop("RDA file \"", rda, "\" does not exist yet; call useRDA() first")
    }
    get(load(rda))[[name]]
}
