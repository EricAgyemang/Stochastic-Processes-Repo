\name{stemPlot}
\alias{stemPlot}
\alias{stemPlot.default}
\alias{stemPlot.formula}
\title{
Stem and leaf plot
}
\description{
Stem and leaf plot. Will accept a factor variable as a second argument to
create stem plots for each of the levels.
}
\usage{
stemPlot(x, ...)

\method{stemPlot}{default}(x, grpvar = NULL, varname = NULL, grpvarname = NULL, 
    ...) 
\method{stemPlot}{formula}(formula, data = parent.frame(), subset, ...) 
}
\arguments{
  \item{x}{
a numeric variable.
}
\item{grpvar}{
a factor variable. A stem plot of \code{x} will be created for each level of the factor
variable.
}
\item{varname}{
name of the numeric variable. This is for printing the output only. Change if
you want to print out a name different from the actual variable name.
}
\item{grpvarname}{
name of the factor variable.  This is for printing the output only. Change if
you want to print out a name different from the actual variable name.
}
\item{formula}{
a formula of the form \code{x ~ grpvar} where \code{x} is  numeric and
\code{grpvar} is a factor variable.
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
}
\details{
This command is just an enhanced version of R's \code{stem} command. It
allows the user to create the stem plot for a numeric variable grouped by
the levels of a factor variable.
}
\author{
Laura Chihara
}
\examples{

stemPlot(states03$Births, states03$Region)

stemPlot(Births ~ Region, data = states03)

}
\keyword{stem plot}

