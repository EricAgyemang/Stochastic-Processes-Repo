\name{anovaSummarized}
\alias{anovaSummarized}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Anova F test
}
\description{
ANOVA F test when given summarized data (sample sizes, means and standard deviations).
}
\usage{
anovaSummarized(N, mn, stdev)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{
a vector with the sample sizes
}
  \item{mn}{
a vector of means, one for each group in the sample
}
  \item{stdev}{
a vector of standard deviations, one for each group in the sample
}
}
\details{
Perform an ANOVA F test when presented with summarized data: sample sizes, sample
means and sample standard devations.
}
\value{
Returns invisibly a list

 \item{Treatment SS}{The treatment sum of squares (also called the "between sum of squares").}
 \item{Residual SS}{Residual sum of squares (also called the "within sum of squares").}
 \item{Degrees of Freedom}{a vector with the numerator and denominator degrees of freedom.}
 \item{Treatment Mean Square}{Treatment SS/numerator DF}
 \item{Residual Mean Square}{Residual SS/denominator DF}
 \item{Residual Standard Error}{Square root of Residual Mean Square}
 \item{F}{the F statistic}
 \item{P-value}{p-value}
...
}

\author{
Laura Chihara
}

\examples{
#use the data set chickwts from base R
head(chickwts)

N <- table(chickwts$feed)
stdev <- tapply(chickwts$weight, chickwts$feed, sd)
mn <- tapply(chickwts$weight, chickwts$feed, mean)

anovaSummarized(N, mn, stdev)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ANOVA}
\keyword{Summarized data}
