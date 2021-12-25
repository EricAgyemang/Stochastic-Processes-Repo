\name{bootCor}
\alias{bootCor}
\title{
Bootstrap a correlation
}
\description{
Bootstrap the correlation of two numeric variables.
}
\usage{
bootCor(x, y, conf.level = 0.95, B = 10000, plot.hist = TRUE, hist.title = NULL, 
     plot.qq = FALSE, legend.loc = "topright")
}
\arguments{
  \item{x}{
a numeric vector.
}
  \item{y}{
a numeric vector.
}
  \item{conf.level}{
confidence level for the bootstrap ercentile interval.
}
  \item{B}{
number of times to resample.
}
  \item{plot.hist}{
a logical value. If \code{TRUE}, plot the bootstrap distribution of the resampled correlation.
}
  \item{hist.title}{
a user supplied title for the histogram.
}
  \item{plot.qq}{
a logical value. If \code{TRUE} a normal quantile-quantile plot of the bootstraped values is created.
}
  \item{legend.loc}{
location to place the legend. Options include \code{"topright"}, \code{"topleft"}, \code{"bottomright"},
 \code{"bottomleft"}.
}
}
\details{
Bootstrap the correlation  of two numeric variables. The bootstrap mean and standard error are 
printed as well as a bootstrap percentile confidence interval. 

Observations with missing values are removed.
}
\value{
The command invisibly returns the correlations of the 
resampled observations.
}
\references{Tim Hesterberg's website \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{

plot(states03$ColGrad, states03$InfMortality)
bootCor(states03$ColGrad, states03$InfMortality)
}
\keyword{resampling}
\keyword{randomiziation}
