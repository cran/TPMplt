% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lyIDdetector.R
\name{lyIDdetector}
\alias{lyIDdetector}
\title{Detecting locations for Strain and Stress}
\usage{
lyIDdetector(data, patterns = "[Ss][Tt][Rr]")
}
\arguments{
\item{data}{A data frame with \code{\link[VBTree:VBTree-package]{VBTree}} style. Pay attention, all factors in column names
should be separated by "-" symbol, and factors for temperatures and strain rates should be saved in pure numeric style.}

\item{patterns}{A regex object to determine layer of Strain and Stress. The default pattern uses "[Ss][Tt][Rr]".}
}
\value{
A list consisted of the layer, and the levels in this layer for Strain and Stress respectively.
}
\description{
Function for detecting the locations for Strain and Stress in data frame. It is an key component for automatic
completion in the function of \code{\link[TPMplt:epsExtract]{epsExtract}}.
}
\examples{
require(VBTree)
chrvec2dl(colnames(TPMdata))
lyIDdetector(TPMdata)
}
\seealso{
\code{\link[VBTree:VBTree-package]{VBTree}}, \code{\link[TPMplt:epsExtract]{TPMplt}}
}
\keyword{epsExtract}
\keyword{lyIDdetector}
