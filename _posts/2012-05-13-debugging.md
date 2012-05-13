---
layout: post
title: "Debugging"
description: "Search and destroy"
category: 'Best Practices'
tags: [debug, developement, profile]
---
{% include JB/setup %}


### Debugging 

Two videos on [how to debug R][1]: [basic debugging in R][2] by
Jay Emerson and [advanced debugging techniques][3] by Harlan Harris. There is
also Richie Cotton's Oh (de)bugger! [part 1][4] and [2][5] posts.

## More links about debugging 

[Debugging in R][6]: using R's build-in tools `debug()`, `browser()` and `trace()`, 
post-morten debugging, R's exception handling and more. 
See also `setBeakPoint()` and `findLineNum()`. A nice
[Introduction to the Interactive Debugging Tools in R][7] (pdf). [Useful
illustration][8] of `trace` to insert a call to `browser` by Josh O'Brien on
SO.

A few [mailing][9] [list][10] [posts][11] and [SO question][12] about
debugging S4 methods - basically, use `trace()` or `browser()`. Also the
[Debugging tools for the R language][13], [Recommendations for
'Dynamic/interactive'' debugging of functions in R][14], [General suggestions
for debugging R][15] and [How to catch warnings and errors with a function
output][16] on StackOverflow.

### Tools

There is also the [`debug`][17] and [`mvbutils`][18] packages. Have a go with
[ess-tracedebug][19], an emacs package for interactive debugging and error
tracing in ESS.

### Watch a variable

Hadley Wickham suggested [this][20] to monitor a variable change:


{% highlight r %}
## Credit Hadley Wickham 
## http://www.mail-archive.com/r-help@r-project.org/msg125980.html
watch <- function(varname) {
 old <- get(varname)
 changed <- function(...) {
   new <- get(varname)
   if (!identical(old, new)) {
     message(varname, " is now ", new)
     old <<- new
   }
   TRUE
 }
 invisible(addTaskCallback(changed))
}
{% endhighlight %}

And the usage

{% highlight rout %}
> a <- 1
> watch("a")
> a <- 2
 a is now 2
{% endhighlight %}

### Inserting code into a package

Inserting code into a package without re-installing it, to facilitate testing
changes which can be selectively added and backed out. See `?insertSource`:
Definitions of functions and/or methods from a source file are inserted into a
package, using the `trace` mechanism. Typically, this allows testing or
debugging modified versions of a few functions without reinstalling a large
package.'


### Profiling code
Profiling `R CMD Rprof --help`, as well as [`profr`][21], [`proftools`][22],
[`debug`][17], [`rbenchmark`][24] and [`benchmark`][25] CRAN packages. Read
here about [memory profiling][26]

    
   [1]: http://blog.revolutionanalytics.com/2010/06/how-to-debug-in-r.html
   [2]: http://www.vcasmo.com/video/drewconway/8555
   [3]: http://www.vcasmo.com/video/drewconway/8556
   [4]: http://4dpiecharts.com/2010/08/26/oh-debugger/
   [5]: http://4dpiecharts.com/2010/09/04/oh-debugger-part-ii/
   [6]: http://www.stats.uwo.ca/faculty/murdoch/software/debuggingR/
   [7]: http://www.biostat.jhsph.edu/~rpeng/docs/R-debug-tools.pdf
   [8]: http://stackoverflow.com/questions/8979759/browser-debug-statement-r
   [9]: http://www.mail-archive.com/r-help@r-project.org/msg70990.html
   [10]: http://www.mail-archive.com/r-help@stat.math.ethz.ch/msg24763.html
   [11]: http://tolstoy.newcastle.edu.au/R/help/04/09/3412.html
   [12]: http://stackoverflow.com/questions/1708074/debugging-generic-functions-in-r
   [13]: http://stackoverflow.com/questions/1169480/debugging-tools-for-the-r-language
   [14]: http://stackoverflow.com/questions/3212540/recommendations-for-dynamic-interactive-debugging-of-functions-in-r
   [15]: http://stackoverflow.com/questions/4442518/general-suggestions-for-debugging-r
   [16]: http://stackoverflow.com/questions/4948361/how-do-i-save-warnings-and-errors-as-output-from-a-function
   [17]: http://cran.r-project.org/web/packages/debug/index.html
   [18]: http://cran.r-project.org/web/packages/mvbutils/index.html
   [19]: http://code.google.com/p/ess-tracebug/
   [20]: http://www.mail-archive.com/r-help@r-project.org/msg125980.html
   [21]: http://cran.r-project.org/web/packages/profr/index.html
   [22]: http://cran.r-project.org/web/packages/proftools/index.html
   [23]: http://cran.r-project.org/web/packages/rbenchmark/
   [24]: http://cran.r-project.org/web/packages/benchmark/
   [25]: http://developer.r-project.org/memory-profiling.html
