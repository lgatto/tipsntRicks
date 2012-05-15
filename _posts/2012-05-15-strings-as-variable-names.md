---
layout: post
title: "Strings as variable names"
description: ""
category: Language
tags: []
---
{% include JB/setup %}

It is sometimes useful to set a string in a variable name that is itself a command of is a variable name. Hadley Wickham's [Computing on the language section](https://github.com/hadley/devtools/wiki/Computing-on-the-language) is an extremely valuable resource. 
    
Below is a short example on using `parse` and `eval`:

{% highlight rout %}    
> foo <- "bar"
> foo 
 foo                       
[1] "bar"                  
> as.name(foo)              
 bar
> string <- "1:10"
> string
 [1] "1:10"
> parse(text=string)
 expression(1:10)
> eval(parse(text=string))
 [1]  1  2  3  4  5  6  7  8  9 10
{% endhighlight %}          

And with `assign` and `get`:

    
{% highlight rout %}    
> varName1 <- "varName2"
> varName1
 [1] "varName2"
> assign(varName1,"123")
> varName1
 [1] "varName2"
> get(varName1)
 [1] "123"
> varName2
 [1] "123"
{% endhighlight %}          

From [stackoverflow](http://stackoverflow.com/questions/3548263/l-ply-how-to-pass-the-lists-name-attribute-into-the-function) by Joris Meys, using `substitute` and `deparse`

{% highlight rout %}
> test <- function(x){
       y <- deparse(substitute(x))
       print(y)
       print(x)
  }
> var <- c("one","two","three")
> test(var)
 [1] "var"
 [1] "one"   "two"   "three"
{% endhighlight %}         

[Here](http://stackoverflow.com/questions/8790143/does-the-ternary-operator-exist-in-r) is a nice utilisation of `deparse`, `parse` and `substitute` to
implement `C`'s [ternary operator](http://en.wikipedia.org/wiki/Ternary_operation) by SO user [kohske](http://stackoverflow.com/users/314020/kohske).
