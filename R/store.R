#' Store a Value Into an RDA file
#'
#' This stores or updates a value, its description, and its context within
#' an RDA notebook file. Note that this will overwrite the results
#' of any previous calls that defined this item.
#'
#' @param name character value indicating the name of the quantity
#' to be stored. Note that this does not need to be a valid R
#' identifier (see Example).
#'
#' @param value an R object storing the value to be stored.
#'
#' @param comment character value holding a comment about the quantity
#' being stored.
#'
#' @param context character value indicating something about the context
#' of the stored item. If this is an empty string (which is the default)
#' then it is the current working directory as discovered with [getwd()].
#' If it is a string starting with the `/` character, then
#' the current working directory is prepended to the string.
#' Otherwise, `context' is used directly.
#'
#' @template rdaTemplate
#'
#' @examples
#' library(rdan)
#' useRDA("sample.rda")
#' storeRDA("2pi", 2 * pi, "circle perimeter divided by radius")
#' retrieveRDA("2pi")
#' storeRDA("beatles on Ed Sullivan Show", as.Date("1964-02-09"), "Beatlemania starts")
#' retrieveRDA("beatles on Ed Sullivan Show")
#' file.remove("sample.rda") # we don't need to store this!
#'
#' @export
#'
#' @author Dan Kelley
storeRDA <- function(name = NULL, value = NULL, comment = "", context = "", rda = whichRDA()) {
    #message("rda='", rda, "'")
    if (!file.exists(rda)) {
        stop("RDA file \"", rda, "\" does not exist yet; use createRDA() to create it")
    }
    # Alter 'context' to be more informative
    if (0 == nchar(context)) {
        context <- getwd()
    } else if (identical("/", substr(context, 1, 1))) {
        context <- paste0(getwd(), context)
    }
    load(rda) # defines 'results'
    results[[name]] <- list(value = value, comment = comment, context = context)
    #print(results)
    save(results, file = rda)
}
