---
layout: post
title: "scatterhist"
description: "Scatterplots with marginal histograms"
category: Plotting
tags: [Plot, visualisation, data]
---
{% include JB/setup %}


This one come from this SAS and R [post](http://sas-and-r.blogspot.com/2011/06/example-841-scatterplot-with-marginal.html) by Charles Heckler, and simply but elegantly combines a scatter plot with 2 histograms to highlight the distribution of the two variables. The code below (slightly modified) first creates the specific plot `layout` with the layout function, sets the appropriate margins depending on the plot using `par(mar)`, does the actual plotting with plot and eventually adds the axes labels in the margins with `mtext`. The two variables of interest are simply them passed as `x` and `y` parameters.

{% highlight r %}
scatterhist <- function(x, y, xlab="", ylab=""){
 zones <- matrix(c(2,0,1,3), ncol=2, byrow=TRUE)
  layout(zones, widths=c(4/5,1/5), heights=c(1/5,4/5))
  xhist <- hist(x, plot=FALSE)
  yhist <- hist(y, plot=FALSE)
  top <- max(c(xhist$counts, yhist$counts))
  par(mar=c(3,3,1,1))
  plot(x,y)
  par(mar=c(0,3,1,1))
  barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0)
  par(mar=c(3,0,1,1))
  barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0, horiz=TRUE)
  par(oma=c(3,3,0,0))
  mtext(xlab, side=1, line=1, outer=TRUE, adj=0, 
    at=.8 * (mean(x) - min(x))/(max(x)-min(x)))
  mtext(ylab, side=2, line=1, outer=TRUE, adj=0, 
    at=(.8 * (mean(y) - min(y))/(max(y) - min(y))))
}
{% endhighlight %}

(Get the [gist](https://gist.github.com/2868075) or get the function in the `tipsntRicks` [package](https://github.com/lgatto/tipsntRicks).)

And the usage

{% highlight rout %}
> x <- rnorm(1:100)
> y <- rnorm(1:100)
> scatterhist(x,y)
{% endhighlight %}

![scatterhist example](http://lgatto.github.com/tipsntRicks/inst/images/scatterhist.png)

One note about the the usage of `barplot` to draw the histograms, rather than `hist`. Histograms can not be plotted horizontally (from the `hist` help page: Typical plots with vertical bars are **not** histograms. Consider `barplot` or `plot(*, type = "h")` for such bar plots), which is why is is necessary to use `barplot` instead, to get the desired effect.

The margins or the number of breaks in the histograms might need to be fine-tuned, but the function is simple and the result is helpful and straightforward to understand.