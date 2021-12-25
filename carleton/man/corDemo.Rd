\name{corDemo}
\alias{corDemo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Correlation demonstration
}
\description{
For a given \code{r}, create a scatterplot of two variables with that correlation.
}
\usage{
corDemo(r = 0)
}
\arguments{
  \item{r}{
a number between -1 and 1. Enter any number r, \eqn{latex}{abs(r)> 1 }, to 
exit the interactive session[
}
}
\details{
Demonstrate the concept of correlation by inputting a number between -1 and 1
and seeing a scatter plot of two variables with that correlation. Once you
invoke this command, you can continue to enter values for r. Type 
any number \eqn{latex}{abs(r)> 1 }) to exit.
}
\author{
Laura Chihara
}
\examples{
\dontrun{
corDemo()
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Correlation}

