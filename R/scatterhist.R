##' Generate a scatterplit and histograms along
##' the x and y margins of the plot.
##'
##' @title Scatterplot with marginal histograms
##' @param x Data to be plotted along the x axis.
##' @param y Data to be plotted along the x axis.
##' @param xlab x axis label. Default is empty character.
##' @param ylab y axis label. Default is empty character.
##' @param ... additional parameters passed to plot.
##' @return Used for its side effect.
##' @author Ken Kleinman
##' @references From \url{http://sas-and-r.blogspot.co.uk/2011/06/example-841-scatterplot-with-marginal.html}
##' @examples
##' x <- rnorm(1:100)
##' y <- rnorm(1:100)
##' scatterhist(x,y)
scatterhist <- function(x, y, xlab = "", ylab = "", ...){
  zones <- matrix(c(2,0,1,3), ncol = 2, byrow = TRUE)
  layout(zones, widths=c(4/5,1/5), heights = c(1/5,4/5))
  xhist <- hist(x, plot = FALSE)
  yhist <- hist(y, plot = FALSE)
  top <- max(c(xhist$counts, yhist$counts))
  par(mar = c(3,3,1,1))
  plot(x, y , ...)
  par(mar = c(0,3,1,1))
  barplot(xhist$counts, axes = FALSE, ylim = c(0, top), space = 0)
  par(mar = c(3,0,1,1))
  barplot(yhist$counts, axes = FALSE, xlim = c(0, top),
          space = 0, horiz = TRUE)
  par(oma = c(3,3,0,0))
  mtext(xlab, side = 1, line = 1, outer = TRUE, adj = 0,
        at = (.8 * (mean(x) - min(x))/(max(x)-min(x))))
  mtext(ylab, side = 2, line = 1, outer = TRUE, adj = 0,
        at = (.8 * (mean(y) - min(y))/(max(y) - min(y))))
}
