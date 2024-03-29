% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list.R
\name{listRDA}
\alias{listRDA}
\title{List Names of Values in an RDA Notebook}
\usage{
listRDA(rda = whichRDA())
}
\arguments{
\item{rda}{character value indicating the name of the RDA file in
which to save the notes. The default is the value returned by
\code{\link[=whichRDA]{whichRDA()}}, as set by a previous call to \code{\link[=useRDA]{useRDA()}}.}
}
\value{
\link{listRDA} returns a vector of strings holding the names
of items in the RDA notebook.
}
\description{
This returns a vector of strings holding the names
of items in the RDA notebook.
}
\author{
Dan Kelley
}
