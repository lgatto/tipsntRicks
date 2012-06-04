\name{scatterhist}
\alias{scatterhist}
\title{Scatterplot with marginal histograms}
\usage{
  scatterhist(x, y, xlab = "", ylab = "")
}
\arguments{
  \item{x}{Data to be plotted along the x axis.}

  \item{y}{Data to be plotted along the x axis.}

  \item{xlab}{x axis label. Default is empty character.}

  \item{ylab}{y axis label. Default is empty character.}
}
\value{
  Used for its side effect.
}
\description{
  Generate a scatterplit and histograms along the x and y
  margins of the plot.
}
\examples{
x <- rnorm(1:100)
y <- rnorm(1:100)
scatterhist(x,y)
}
\author{
  Laurent Gatto
}

