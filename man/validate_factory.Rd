% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validate_factory.R
\name{validate_factory}
\alias{validate_factory}
\title{Inspect and validate the content of a factory}
\usage{
validate_factory(factory = getwd(), warnings = TRUE, errors = TRUE)
}
\arguments{
\item{factory}{the path to a report factory; defaults to the current working
directory}

\item{warnings}{A logical indicating if warnings should be issued; defaults to \code{TRUE}.}

\item{errors}{A logical indicating if errors should be issued; defaults to \code{TRUE}.}
}
\description{
This function can be used to inspect the content of a factory and make sure
it looks fine. This includes various sanity checks listed in details. The
function returns a list of error and warning messages.
}
\details{
Checks ran on the factory include (the result of a failure is indicated in brackets):

\itemize{

 \item the directory exists [error]

 \item all mandatory files exist: .here, .gitignore [error]

 \item all mandatory folders exist: report_sources/ [error]

 \item all .Rmd reports have unique names once outside their folders (to
 avoid conflicts in outputs) [warning]

}
}
\author{
Thibaut Jombart \email{thibautjombart@gmail.com}
}
