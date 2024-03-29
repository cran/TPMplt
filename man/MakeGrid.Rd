% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PrePLT.R
\name{MakeGrid}
\alias{MakeGrid}
\title{Make grid mesh for plots}
\usage{
MakeGrid(x, seqby = 80)
}
\arguments{
\item{x}{A calculation result returned from the function \code{\link[TPMplt:DMMprocess]{DMMprocess}}.}

\item{seqby}{A numeric value to specify the grid density. The default value used is 80, namely the
default mesh used 80*80 for original plot.}
}
\value{
A grid table with the ranges for logarithm strain rate and temperature.
}
\description{
Make a grid for ploting thermal processing map.
}
\examples{
epstable <- epsExtract(TPMdata, 0.7, 2, 3)
DMM <- DMMprocess(epstable)
prdptr <- MakeGrid(DMM)
prdptr
}
\keyword{internal}
