% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_prism.R
\name{read_prism}
\alias{read_prism}
\title{Read prism data tables into R}
\usage{
read_prism(prism_file, sheet = NA)
}
\arguments{
\item{prism_file}{a string - the path to the prism file}

\item{sheet}{Which table to read in. \code{sheet} can either be a number (the index of the table), a character string from the
\link[pRism]{get_table_names} output or NA (default),
in which case all tables in the file are read.}
}
\value{
A data.frame that tries to reproduce the data table output in prism or a named list of data.frames.
}
\description{
Read prism data tables into R
}
\examples{
# prism_file is the file path to the prism file. It needs to either be a .pzfx or a .prism file.
demo_file <- system.file("extdata", "demo_dataset.prism", package = "pRism")
read_prism(demo_file, sheet = 1) # This will read only the first data table.
read_prism(demo_file, sheet = "XY: Entering replicate data") # This will read the selected data table.
read_prism(demo_file, sheet = NA) # This will read all data tables in the file.
}
