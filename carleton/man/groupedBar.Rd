\name{groupedBar}
\alias{groupedBar}
\alias{groupedBar.default}
\alias{groupedBar.formula}
\title{
Grouped bar chart
}
\description{
Create a bar chart of a single categorical variable or a grouped bar chart
of two categorical variables.
}
\usage{
groupedBar(x, ...)

\method{groupedBar}{default}(x, condvar = NULL, percent = TRUE, ylim = NULL, color = NULL, 
    cex.axis = NULL, cex.names = NULL, legend = TRUE, legend.loc = "topright", 
    inset = NULL, ...) 
\method{groupedBar}{formula}(formula, data = parent.frame(), subset, ...) 
}
\arguments{
  \item{x}{
a factor variable. If \code{x} is numeric, it will be coerced to a factor variable.
}
   \item{condvar}{
   a factor variable to condition on. If \code{NULL}, then a bar plot of just
   the \code{x} variable will be created. If \code{condvar} is numeric, it will
   be coerced to a factor variable.
   } 
    \item{percent}{
   a logical value. Should the y-axis give percent or counts?
   }
   \item{ylim}{
   set the y-axis range.
   } 
   \item{color}{
   optional if you don't like the default colors for the bars. Type \code{colors()} to see the options.
   }
   \item{cex.axis}{
   magnfication for the y-axis labels.
   }
   \item{cex.names}{
   magnification for the bar labels.
   }
   \item{legend}{
   a logical value. If \code{TRUE}, include a legend.
   }
   \item{legend.loc}{
   location of the legend. Options include \code{"topright"}, \code{"topleft"}, 
   \code{"bottomright"} and \code{"bottomleft"}.
   }
   \item{inset}{inset distances from the margins as a fraction of the plot region when 
     legend is placed by keyword. See \code{\link{legend}}.
   }
    \item{formula}{
   a formula of the form \code{x ~ condvar}. If \code{x} or \code{condvar} is (are) not
   a factor variable, then it (they) will be coerced into one.
   }
   \item{data}{
   a data frame that contains the variables in the formula.
   }
   \item{subset}{
   an optional vector specifying a subset of observations to be used.
   }
   \item{\dots}{ 	
   further arguments to be passed to or from methods.
}
}
\details{
For a single factor variable, a bar plot. If two factor variables are given, then
a bar plot of \code{x} conditioned by \code{condvar}.  This command uses
R's \code{table} command so missing values are automatically removed.
}
\value{
Returns invisibly a table of the variable(s).
}
\author{
Laura Chihara
}
\examples{

groupedBar(states03$DeathPenalty)

groupedBar(states03$DeathPenalty, states03$Region, legend.loc = "topleft")

#same as above but using a formula syntax
groupedBar(DeathPenalty ~ Region, data = states03, legend.loc = "topleft")

}
\keyword{bar plot}
\keyword{grouped bar plot}
