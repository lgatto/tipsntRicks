---
layout: post
title: "Testing your code"
category: 'Best Practices'
tags: [unit testing, integration testing, reproducible research, development, package]
---
{% include JB/setup %}

### Unit Testing 

Unit Testing checks one unit of functionality that cannot be further
decomposed. The [`RUnit` package - R Unit test framework][1] and the
[`testthat` package][2] - testing package specifically tailored for R that's
fun, flexible and easy to set up ([source code][3] on github). Both these
packages are presented in [Unit Testing in R: The Bare Minimum][4] by John
Myles White.

### Integration testing

Integration testing runs through a whole analysis workflow and check the
interplay of various software components. The [Sweave][5] vignettes, Emacs
[org-mode][6] and [org-babel][7] can be combined to include [inline R and
graphs][8] into your document. Also, some [Guideline for testing a
function][9] on SO.

   [1]: http://cran.r-project.org/web/packages/RUnit/index.html
   [2]: http://cran.r-project.org/web/packages/testthat/index.html
   [3]: http://github.com/hadley/test_that
   [4]: http://www.johnmyleswhite.com/notebook/2010/08/17/unit-testing-in-r-the-bare-minimum/
   [5]: http://www.stat.uni-muenchen.de/~leisch/Sweave/
   [6]: http://orgmode.org/
   [7]: http://orgmode.org/worg/org-contrib/babel/index.html
   [8]: http://orgmode.org/worg/org-contrib/babel/languages/ob-doc-R.php
   [9]: http://stackoverflow.com/questions/3937669/guidelines-for-testing-a-statistical-function-in-r
