\name{missingLevel}
\alias{missingLevel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Missing observations in factors
}
\description{
In data frames with factor variables, convert any observation with "" into <NA>.
}
\usage{
missingLevel(data)
}

\arguments{
  \item{data}{
a data frame with factor variables.
}
}
\details{
In a factor variable with the level \code{""""}, this command will convert this
to an \code{<NA>}.
}
\value{
Returns the same data frame with \code{""""} replaced by \code{<NA>} in factor
variables.
}

\author{
Laura Chihara
}
\note{
When importing data from comma separated files (for example), missing values in a 
categorical variable are often denoted by """. We often do not want to treat
this as a level of a factor variable in R.
}


\keyword{missing values}

