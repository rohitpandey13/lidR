% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/catalog_makecluster.R
\name{catalog_makechunks}
\alias{catalog_makechunks}
\title{Subdivide a LAScatalog into chunks}
\usage{
catalog_makechunks(ctg, realignment = FALSE, plot = opt_progress(ctg))
}
\arguments{
\item{ctg}{an object of class \code{LAScatalog}}

\item{realignment}{\code{FALSE} or \code{list(res = x, start = c(y,z))}. Sometimes the chunk must
be aligned with a raster, for example to ensure the continuity of the output. If the chunk size is
800 and the expected product is a raster with a resolution of 35, 800 and 35 are not compatible
and will create 2 different partial pixels on the edges. The realignment option forces the
chunk to fit the grid aligment.}

\item{plot}{logical. Displays the chunk pattern.}
}
\value{
A list containing objects of class \code{LAScluster}.
}
\description{
Virtually subdivide a LAScatalog into chunks. This function is an internal function exported to
users in version 3.0.0 because it might be useful for some debugging purposes. It might also be useful for
some advanced developers. Regular users are not expected to use this function. The chunks are made
according to the \link[=catalog_options_tools]{catalog processing options}.
}
