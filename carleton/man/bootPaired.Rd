\name{bootPaired}
\alias{bootPaired}
\title{
Bootstrap paired data
}
\description{
Perform a bootstrap of two paired variables. 
}
\usage{
bootPaired(x, y, fun = mean, conf.level = 0.95, B = 10000, plot.hist = TRUE, 
     hist.title = NULL, plot.qq = FALSE, legend.loc = "topright")
}
\arguments{
  \item{x}{
a numeric vector.
}
  \item{y}{
a numeric vector.
}
  \item{fun}{
function for the statistic you wish to compute.
}
  \item{conf.level}{
confidence level for the bootstrap percentile interval.
}
  \item{B}{
number of resamples.
}
  \item{plot.hist}{
logical. If \code{TRUE}, plot the histogram of the bootstrap distribution.
}
  \item{hist.title}{
supply your own title for the histogram.
}
  \item{plot.qq}{
logical. If \code{TRUE}, a normal quantile-quantile plot of the replicates will be created.
}
  \item{legend.loc}{
location for the legend on the histogram. Options are \code{"topright"} \code{"topleft"}, \code{"bottomleft"}
 and \code{"bottomright"}.
 }
}
\details{
The command will compute the difference of \code{x} and \code{y} and bootstrap the difference.
The mean and standard error of the bootstrap distribution will be printed as well as a
bootstrap percentile interval. 

Observations with missing values are removed.
}
\value{
The command invisibly returns a vector with the
replicates of the statistic being bootstrapped.
}
\references{
Tim Hesterberg's website \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{
#Bootstrap the mean difference of fat content in vanilla and chocolate ice
#cream. Data are paired becaues ice cream from the same manufacturer will
#have similar content.
data(icecream)
bootPaired(icecream$VanillaFat, icecream$ChocFat)

 }
\keyword{bootstrap}
\keyword{randomization}
\keyword{resampling}
