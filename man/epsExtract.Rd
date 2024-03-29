% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epsExtract.R
\name{epsExtract}
\alias{epsExtract}
\title{Auto output for strain rate vs. temperature table}
\usage{
epsExtract(data, eps, lyT, lySR, manual = NULL)
}
\arguments{
\item{data}{A data frame with \code{\link[VBTree:VBTree-package]{VBTree}} style. Pay attention, all factors in column names
should be separated by "-" symbol, and factors for temperatures and strain rates should be saved in pure numeric style.}

\item{eps}{A numeric value to specify strain condition.}

\item{lyT}{An integer to specify the layer for temperature attribute in the vector binary tree.}

\item{lySR}{An integer to specify the layer for strain rate attribute in the vector binary tree.}

\item{manual}{An integer vector with the length of 3 where the 1st element denotes the layer for Stress and Strain,
the 2nd and 3rd elements represent the levels for Strain and Stress, respectively. The default setting is NULL, which
can call the function \code{\link[TPMplt:lyIDdetector]{lyIDdetector}} for automatical completion this vector.}
}
\value{
A list consist of a matrix table arranged by rows for strain rates while columns for temperatures, and a numeric
value as strain condition for this strain rate-temperature table.
}
\description{
Automatically output the strain rate vs. temperature table, by a specified strain condition.
}
\examples{
require(VBTree)
# Find locations for temperature and strain rate:
dl2vbt(chrvec2dl(colnames(TPMdata)))
epsExtract(TPMdata, eps = 0.7, lyT = 2, lySR = 3)
}
\seealso{
\code{\link[VBTree:VBTree-package]{VBTree}}, \code{\link[TPMplt:lyIDdetector]{lyIDdetector}}
}
\keyword{SR-T.table}
\keyword{epsExtract}
\keyword{lyIDdetector}
