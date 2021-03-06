% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/new_factory.R
\name{new_factory}
\alias{new_factory}
\title{Create a new report factory}
\usage{
new_factory(destination = "new_factory", include_examples = TRUE,
  move_in = TRUE)
}
\arguments{
\item{destination}{the name of the report factory folder to be created}

\item{include_examples}{a logical indicating if examples of reports shoud be
added to the factory; defaults to \code{TRUE}}

\item{move_in}{a logical indicating if the current session should move into
the created factory; defaults to \code{TRUE}}
}
\description{
This function can be used to create a new report factory, using a template
containing data and associated reports as examples. The provided examples use
(simulated) infectious disease data, but any other data analysis would work
the same. See details for the content of the factory
}
\details{
The factory includes:

\itemize{

 \item \code{data/}: a folder storing data, with subfolders for
 \code{contacts} and \code{linelists} (two types of epidemiological data),
 and \code{.xlsx} files within these folders

 \item \code{report_sources/}: a folder storing the reports, named after the
convention described in \code{\link{update_reports}}, and stored in
subfolders \code{contacts} and \code{epicurves}

 \item \code{.gitignore}: a file used to tell git to ignore the produced
outputs in \code{report_outputs}

 \item \code{.here}: an empty file used as anchor by \code{\link[here]{here}}

}
}
\examples{

\dontrun{
destination <- file.path(tempdir(), "new_factory")
destination
new_factory(destination)
dir()

## check content
list_reports()
list_outputs()

## check dependencies
list_deps()
install_deps()

## compile a single report:

compile_report("contacts_2017-10-29", quiet = TRUE)
list_outputs()

## compile all reports (only most recent versions):

update_reports()
list_outputs()
}
}
\author{
Thibaut Jombart \email{thibautjombart@gmail.com}
}
