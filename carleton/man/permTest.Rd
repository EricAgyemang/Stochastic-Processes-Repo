\name{permTest}
\alias{permTest}
\alias{permTest.default}
\alias{permTest.formula}
\title{
Permutation test
}
\description{
Permutation test to test a hypothesis involving two samples.
}
\usage{
permTest(x, ...)
\method{permTest}{default}(x, group, fun = mean, B = 9999, alternative = "two.sided", 
    plot.hist = TRUE, legend.loc = "topright", plot.qq = FALSE,...) 
\method{permTest}{formula}(formula, data = parent.frame(), subset, ...) 
}
\arguments{
  \item{x}{
  a numeric vector. If the function is the mean (\code{fun = mean}) and 
  \code{x} is a binary numeric vector of 0's and 1's, then the test is between
  proportions.
}
  \item{group}{
 a factor variable with two levels. If \code{group} is a binary numeric vector, it
 will be coerced into a factor variable.
}
 \item{fun}{
   the statistic of interest.
   }
 \item{B}{
  the number of resamples.
  }
 \item{alternative}{
 the alternative hypothesis. Options are \code{"two.sided"}, \code{"less"}
 or \code{"greater"}.
 }
 \item{plot.hist}{
 a logical value. If \code{TRUE}, the permutation distribution of the statistic
 is plotted.
 }
 \item{legend.loc}{
 location of the legend for the histogram. Options are \code{"topleft"}, \code{"topright"},
 \code{"bottomleft"} or \code{"bottomright"}.
 }
 \item{plot.qq}{
 a logical value. If \code{TRUE}, then a normal quantile-quantile plot of the 
 resampled test statistic  is created.
 }
\item{formula}{
a formula of the form \code{x ~ group} where \code{x} is  numeric and
\code{group} is a factor variable.
}
\item{data}{
a data frame with the variables in the formula.
}
\item{subset}{
an optional expression specifying which observations to keep.
}
\item{\dots}{ 	
further arguments to be passed to or from methods.
}
} %end arguments
\details{
Permutation test to see if a population parameter is the same for two
populations. For instance, test \eqn{latex}{H_0: \mu_M = \mu_F} where
\eqn{latex}{\mu} denotes the population mean. The values of the numeric
variable are randomly assigned to the two groups and the difference
of the statistic for each group is calculated.
The command will print
the mean and standard error of the distribution of the test statistic as
well as a P-value.

Observations with missing values are removed.
}
\value{
Returns invisibly a vector of the replicates of the test statistic.
}
\references{
Tim Hesteberg's website: \url{http://www.timhesterberg.net/bootstrap}
}
\author{
Laura Chihara
}
\examples{
permTest(states03$ViolentCrime, states03$DeathPenalty)

#using formula syntax
permTest(ViolentCrime ~ DeathPenalty, data = states03, alt = "less")
}
\keyword{permutation test}
\keyword{resampling}
\keyword{randomization}
