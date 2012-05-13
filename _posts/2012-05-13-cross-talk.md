---
layout: post
title: "Cross Talk"
description: "Interfacing R With Other Languages"
category: 'Cross Talk'
tags: [Java, Perl, Python, C, C++, developement]
---
{% include JB/setup %}

### Calling OS commands 

A general approach would consist to use the `system()` function and feed it the shell, perl -e, ruby -e, ... commands. 

### C/C++. 

The sections [System and foreign language interfaces][1] and [The R
API: entry points for C code][2] from Writing R Extensions (with also
information about FORTRAN). [Rcpp: Seamless R and C++ Integration][3] by Dirk
Eddelbuettel and Romain Francois and a [video about R and C++ integration][4]
from UCLA/LA RUG. `Rcpp` is also really great to interface C++ classes with S4
reference classes using modules! An 1:32 long Google Tech Talk video about
[Integrating R with C++: Rcpp, RInside, and RProtobuf][5] by Dirk Eddelbuettel
and Romain Francois. Also OO programming included.  [Faster R code using C][6]
slides by Dennis Prangle.

### Java 

[`helloJavaWorld`][7] dummay package to demonstrate how to interface to
a jar file that resides inside an R package. Also take a look at the source of
[Deducer][8] and [DeducerplugInExample][9]. There is a tutorial on including
java code in your package available on Deducer's web (answer form Ian Fellows
on [stackoverflow][10]). [`rJava` - Low-level R to Java interface.][11]
[Calling Java code from R][12], from Darren Wilkinson's research blog.

### Perl. 

The [R/Splus - Perl (bidirectional) Interface][13] from omegahat.

### Python. 
The [R/SPlus - Python (bidirectional) Interface][14] from omegahat and
[RPy][15], a simple and efficient access to R from Python.


   [1]: http://cran.r-project.org/doc/manuals/R-exts.html#System-and-foreign-language-interfaces
   [2]: http://cran.r-project.org/doc/manuals/R-exts.html#The-R-API
   [3]: http://dirk.eddelbuettel.com/code/rcpp.html
   [4]: http://dirk.eddelbuettel.com/blog/2010/04/07/#ucla_larug_talks_video
   [5]: http://www.youtube.com/watch?v=UZkaZhsOfT4
   [6]: www.maths.lancs.ac.uk/~prangle/CinR/CinR.pdf
   [7]: http://cran.r-project.org/web/packages/helloJavaWorld/index.html
   [8]: http://cran.r-project.org/web/packages/Deducer/index.html
   [9]: http://cran.r-project.org/web/packages/DeducerPlugInExample/index.html
   [10]: http://stackoverflow.com/questions/3843816/how-to-include-jar-file-when-creating-a-r-package
   [11]: http://www.rforge.net/rJava/
   [12]: http://darrenjw.wordpress.com/2011/01/01/calling-java-code-from-r/
   [13]: http://www.omegahat.org/RSPerl/
   [14]: http://www.omegahat.org/RSPython/
   [15]: http://rpy.sourceforge.net/

