---
layout: page
title: A collection of R Tips'n Tricks
# tagline: Supporting tagline
---
{% include JB/setup %}

## What is R

[R](http://www.r-project.org) is a free software environment for statistical computing and graphics. It is used in academia and industry, in many different fields, from (obviously) statistics, [finance](http://www.rinfinance.com/), [high-thoughput biology (omics)](http://www.bioconductor.org), ... and can be expanded at in infinity through package ([CRAN](http://cran.r-project.org/), [Bioconductor](http://bioconductor.org/packages/release/BiocViews.html#___Software), [R-Forge](https://r-forge.r-project.org/), [omegahat](http://www.omegahat.org/cranRepository.html)).

## Documentation 

The are vast amounts of documentation about [R](http://www.r-project.org):
 - the [R manuals](http://cran.r-project.org/manuals.html) page edited by the R Development Core Team
 - each function has it own manual page and some packages come with a global overview in the form of a  _vignette_ 
 - many free documents and tutorials freely available
 - lots of general or specialised books
 - several [mailing lists](http://www.r-project.org/mail.html) and dedicated [QA sites](http://stackoverflow.com/questions/tagged/r)
 - ...
 - ...
 - and this little collection of tips and tricks that I found useful to collect.

To best use this site, feel free to browser the [archive](http://lgatto.github.com/tipsntRicks/archive.html) or select a [catergory](http://lgatto.github.com/tipsntRicks/categories.html) or [tags](http://lgatto.github.com/tipsntRicks/tags.html) of interest.

## Before `tipsntRicks`

Before setting up to repository, the content was available on [slashhome.be](http://www.slashome.be). The publication date is when the content was moved here; some posts are much older and possibly a bit outdated. 

## Sample Posts

Here's a sample of my R posts:

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>




