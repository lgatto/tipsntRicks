\name{watch}
\alias{watch}
\title{Watch a variable.}
\usage{
  watch(varname)
}
\arguments{
  \item{varname}{A \code{character} with the name of the
  variable to be watched.}
}
\value{
  Invisibly returns the \code{addTaskCallback} return
  values, an \code{integer} giving the position in the list
  of task callbacks.
}
\description{
  Track how a variable is updated. This function was
  written by Hadley Wickham. Original source is
  \url{http://www.mail-archive.com/r-help@r-project.org/msg125980.html}.
}
\examples{
a <- 1
watch("a")
a <- 2
}
\author{
  Hadley Wickham
}

