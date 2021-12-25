\name{permTestCor}
\alias{permTestCor}
\title{
Permutation test for the correlation of two variables.
}
\description{
Hypothesis test for a correlation of two variables. The null hypothesis is that the population
correlation is 0.
}
\usage{
permTestCor(x, y, B = 999, alternative = "two.sided", plot.hist = TRUE, 
    legend.loc = "topright", plot.qq = FALSE)
}
\arguments{
  \item{x}{
   a numeric vector.
}
  \item{y}{
    a numeric vector.
}
  \item{B}{
 the number of resamples to draw.
}
  \item{alternative}{
alternative hypothesis. Options are \code{"two.sided"}, \code{"less"} or \code{"greater"}.
}
  \item{plot.hist}{
a logical value. If \code{TRUE}, plot the distribution of the correlations obtained
from each resample.
}
  \item{legend.loc}{
location of the legend on the histogram. Options are \code{"topright"}, \code{"topleft"}, 
\code{"bottomleft"} and \code{"bottomright"}.
}
  \item{plot.qq}{
 a logical value. If \code{TRUE}, plot the normal quantile-quantile plot of the correlations
 obtained from each resample.
}
}
\details{
Perform a permutation test to test \eqn{latex}{H_0: \rho = 0}, where \eqn{latex}{\rho}is the
population correlation. The rows of the second variable are permuted and the
correlation is re-computed.

The mean and standard error of the permutation distribution is printed as well as a P-value.

Observations with missing values are removed.
}
\value{
Returns invisibly a vector of the correlations obtained by the randomization.
}
\references{
Tim Hesterberg's website: \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{
plot(states03$HSGrad, states03$TeenBirths)
cor(states03$HSGrad, states03$TeenBirths)

permTestCor(states03$HSGrad, states03$TeenBirths)

}
\keyword{permutation test}
\keyword{randomization}
\keyword{resampling}
