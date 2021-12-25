\name{confIntDemo}
\alias{confIntDemo}
\title{
Confidence Interval Demonstration
}
\description{
Draw many random samples and compute confidence interval.  How many intervals
capture the true mean?
}
\usage{
confIntDemo(distr = "normal", n = 20, conf.level = 0.95)
}
\arguments{
  \item{distr}{
distribution of the population to be sampled. Options include \code{"normal"}, \code{"exponential"}, 
  \code{"uniform"} and \code{"binary"} (partial match allowed).
}
  \item{n}{
sample size
}
  \item{conf.level}{
confidence level.
}
}
\details{
This simulation will draw 100 random samples from a given population distribution and compute the
correpsonding confidence intervals. The 100 intervals will be drawn with an indication
of the ones that missed the true mean. A histogram of the population will also be created.
}
\value{
The command invisibly returns the fraction of intervals that capture the true mean.
}
\author{
Laura Chihara
}
\examples{
confIntDemo()

confIntDemo(distr = "exponential", n = 40)
}
\keyword{confidence interval}
