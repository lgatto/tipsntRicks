---
layout: post
title: "emails in R"
description: "Send emails using R"
category: Misc
tags: [misc]
---
{% include JB/setup %}

[This post](http://www.ancienteco.com/2012/05/send-emails-with-attachments-from-r.html) by W. Andrew Barr shows how to send emails, possibly with attachments, using the [`sendmailR`](http://cran.r-project.org/web/packages/sendmailR/index.html) package. 

A helpful usecase is to alert the user that a lengthly computation has terminated. It might even be useful to include another `sendmail` call within a [`tryCatch`](http://stat.ethz.ch/R-manual/R-devel/library/base/html/conditions.html) to be informed of errors.
