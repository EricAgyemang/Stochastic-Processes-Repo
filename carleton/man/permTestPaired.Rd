\name{permTestPaired}
\alias{permTestPaired}
\title{
Permutation test for paired data.
}
\description{
Permutation test for paired data.
}
\usage{
permTestPaired(x, y, fun = mean, B = 9999, alternative = "two.sided", 
     plot.hist = TRUE, legend.loc = "topright", plot.qq = FALSE)
}
\arguments{
  \item{x}{
  a numeric vector.
}
  \item{y}{
  a numeric vector.
}
  \item{fun}{
  statistic of interest.
}
  \item{B}{
  the number of resamples.
}
  \item{alternative}{
the alternative hypothesis. Options are \code{"two.sided"}, \code{"less"} and \code{"greater"}.
}
  \item{plot.hist}{
a logical value. If \code{TRUE}, create a histogram displaying the permutation distribution of the
statistic.
}
  \item{legend.loc}{
a logical value. If \code{TRUE}, include a legend on the histogram.
}
  \item{plot.qq}{
a logical value. If \code{TRUE}, include a quantile-normal plot of the permuation
distribution.
}
}
\details{
For two paired numeric variables with n rows, randomly select k of the n rows 
(k also is randm) and switch the entries \eqn{latex}{(a, b) \to (b, a)} and then 
compute the statistic on the
difference of the two variables.

Observations with missing values are removed.
}
\value{
Returns invisibly a vector of the replicates of the test statistic (ex. mean
of the difference of the resampled variables).
}
\references{
Tim Hesterberg's website: \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{
#Does vanilla ice cream have fewer calories than chocolate ice cream, on average?
#H0: mean amount of sugar is the same
#HA: mean amount of sugar is less in vanilla ice cream

permTestPaired(icecream$VanillaSugar, icecream$ChocSugar, alternative = "less")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{permutation test}
\keyword{randomization}
\keyword{resampling}
\keyword{paired data}
