\name{boot}
\alias{boot}
\alias{boot.default}
\alias{boot.formula}
\title{Bootstrap}
\description{
Bootstrap a single variable or a grouped variable
}
\usage{
boot(x, ...)
\method{boot}{default}(x, group = NULL, fun = mean, conf.level = 0.95, 
    B = 10000, plot.hist = TRUE, hist.title = NULL, legend.loc = "topright", 
    plot.qq = FALSE,...) 
\method{boot}{formula}(formula, data, subset, ...)     
}
\arguments{
  \item{x}{
a numeric vector
}
  \item{group}{
an optional grouping variable (vector), usually a factor variable. If it is a binary 
numeric variable, it will be coerced to a factor.
}
 \item{fun}{
 function that computes the statistic of interest. Default is the \code{mean}.
}
\item{conf.level}{
confidence level for the bootstrap percentile interval. Default is 95\%.
}  
\item{B}{
number of times to resample.
}
\item{plot.hist}{
logical value. If \code{TRUE}, plot the histogrom of the bootstrap distribution.
}
\item{hist.title}{
a title for the histogram.
}
\item{legend.loc}{
where to place the legend on the histogram. Default is \code{"topright"}. Other options
include \code{"topleft"}, \code{"bottomleft"} and \code{"bottomright"}.
}
\item{plot.qq}{
Logical value. If \code{TRUE}, create a normal quantile-quantile  plot of the bootstrap
distribution.
}
\item{formula}{
a formula \code{x ~ g} where \code{x} is a numeric vector and \code{g} a factor variable with two
levels. If \code{g} is a binary numeric vector, it will be coerced to a factor variable.
}
\item{data}{
a data frame that contains the variables given in the formula.
}
\item{subset}{
an optional expression indicating what observations to use.
}
\item{\dots}{ 	
further arguments to be passed to or from methods.
}
}
\details{
Perform a bootstrap of a statistic applied to a single variable, or to the
difference of the statistic computed on two samples (using the grouping
variable). If \code{x} is a binary vector of 0's and 1's and the function is the mean,
then the statistic of interest is the proportion.

Observations with missing values are removed.
} 
\value{
A vector with the resampled statistics is returned invisibly.
}
\references{
Tim Hesterberg's website \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{
#ToothGrowth data (supplied by R)
#bootstrap mean of a single numeric variable
boot(ToothGrowth$len)

#bootstrap difference in mean of tooth length for two groups.
boot(ToothGrowth$len, ToothGrowth$supp)

#same as above using formula syntax
boot(len ~ supp, data = ToothGrowth)

}
\keyword{bootstrap}
\keyword{resampling}
\keyword{randomization}
