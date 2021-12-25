\name{qqPlotDemo}
\alias{qqPlotDemo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Demonstration of the normal qq-plot.
}
\description{
Demonstrate the normal quantile-quantile plot for samples drawn from different
populations.
}
\usage{
qqPlotDemo(n = 25, distribution = "normal", mu = 0, sigma = 1, df = 10, lambda = 10, 
     numdf = 10, dendf = 16, shape1 = 40, shape2 = 5)
}
\arguments{
  \item{n}{
   sample size
}
  \item{distribution}{
 population distribution. Options are \code{"normal"}, \code{"t"},\code{"exponential"},
 \code{"chi.square"}, \code{"F"} or \code{"beta"} (partial matches are accepted).
}
  \item{mu}{
 mean for the normal distribution.
}
  \item{sigma}{
(positive) standard deviation for the normal distribution.
}
  \item{df}{
(positive) degrees of freedom for the t-distribution.
}
  \item{lambda}{
positive rate for the exponential distribution.
}
  \item{numdf}{
(positive) numerator degrees of freedom for the chi-square distribution.
}
  \item{dendf}{
(positive) denominator degrees of freedom for the chi-square distribution.
}
  \item{shape1}{
positive parameter for the beta distribution (shape1 = a).
}
  \item{shape2}{
positive parameter for the beta distribution (shape2 = b).
}
}
\details{
Draw a random sample from the chosen sample and display  the normal
qq-plot as well as the histogram of its distribution.
}
\value{
Returns invisibly the random sample.

}
\author{
Laura Chihara
}
\examples{
qqPlotDemo(n = 30, distr = "exponential", lambda = 1/3)
}
\keyword{normal quantile-quantile plot}

