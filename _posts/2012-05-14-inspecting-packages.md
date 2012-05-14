---
layout: post
title: "Inspecting packages"
description: ""
category: 'Best Practices'
tags: [development, package]
---
{% include JB/setup %}



There is no such thing as reading source code to learn
about a package. But other functions are very useful to learn about a package
- here are a few: `ls("package:aPackage")`, `ls.str` and `lsf.str` (see
[this](http://stackoverflow.com/questions/8696158/find-all-functions-including-private-in-a-package)
SO post for an elegant example) , `findFunction("aFuncName")` and
`mvbutils::find.funs("package:aPackage")`, `getAnywhere`. In general, the
[mvbutils](http://cran.r-project.org/web/packages/mvbutils/index.html)
package can be usefull for developement and debugging.

The old version of `roxygen` had a feature to build a function call graph. See
also the [`codetools`](http://cran.r-project.org/web/packages/codetools/index.html) 
package for useful tools.
