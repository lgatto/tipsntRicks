---
layout: page
title: A collection of R Tips'n Tricks
# tagline: Supporting tagline
---
{% include JB/setup %}

## What is R

[R](http://www.r-project.org) is a free software environment for statistical computing and graphics.

## Update Author Attributes

This is done. And a bit more...
    
## Sample Posts

This blog contains sample posts which help stage pages and blog data.
When you don't need the samples anymore just delete the `_posts/core-samples` folder.

    $ rm -rf _posts/core-samples

Here's a sample "posts list".

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

## To-Do



