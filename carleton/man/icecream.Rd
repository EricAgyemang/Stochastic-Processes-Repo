\name{icecream}
\alias{icecream}
\docType{data}
\title{
Ice cream data
}
\description{
Nutrional information on vanilla and chocolate ice cream from a sample of companies.
}
\usage{data(icecream)}
\format{
  A data frame with 39 observations on the following 7 variables.
  \describe{
    \item{\code{Brand}}{Brand name}
    \item{\code{VanillaCalories}}{Calories per serving in vanilla}
    \item{\code{VanillaFat}}{Fat per serving (g) in vanilla}
    \item{\code{VanillaSugar}}{Sugar per serving (g) in vanilla}
   \item{\code{ChocCalories}}{Calories per serving in chocolate}
    \item{\code{ChocFat}}{Fat per serving (g) in chocolate}
    \item{\code{ChocSugar}}{Sugar per serving (g) in chocolate}
  }
}
\details{
Nutritional information on vanilla and chocolate ice cream from a sample of companies.
}
\source{
Data collected by Carleton student Ann Butkowski (2008).
}
\examples{
data(icecream)
head(icecream)
t.test(icecream$VanillaCalories, icecream$ChocCalories, paired = TRUE)
}
\keyword{datasets}
