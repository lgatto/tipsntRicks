---
layout: post
title: "About limma"
category: Bioconductor
tags: [statistics, package]
---
{% include JB/setup %}


Probes and contrasts combination methods in the multiple testing strategy: `global` will treat the entire matrix of t-statistics as a single vector of unrelated tests. In other words, with the `global` option, all the contrasts are considered to be independent, and the p-values are adjusted as if you just had a bunch of independent t-tests. The setting `separate` is equivalent to using `topTable` separately for each coefficient in the linear model fit, and will give the same lists of probes if `adjust.method` is the same. Method `hierarchical` adjusts down genes and then across contrasts. Method `nestedF` adjusts down genes and then uses classifyTestsF to classify contrasts as significant or not for the selected genes. 

For the `global` option, all the contrasts are considered to be independent, and the p-values are adjusted as if you just had a bunch of independent t-tests. 

The `nestedF` option is a bit more complicated. First, a bit of background. The F-statistic is used to determine if there are any differences between the samples, but it doesn't tell you which sample(s) are different. You have to fit contrasts to find out which sample(s) are different. So the idea with the `nestedF` is to adjust the p-values associated with the F-test to find which genes are differentially expressed in at least one sample. Now we have a list of genes that are differentially expressed, but we don't know for which sample(s) that may be true. The t-statistics associated with the contrasts are then inspected and the largest one (in absolute value) is considered significant. Now, there may be other contrasts that are significant as well, so the largest t-statistic is set to the same absolute value as the second largest t-statistic, and the F-statistic is calculated again. If the F-statistic is still significant, the second largest contrast is considered significant. This procedure is continued until the F-statistic is no longer significant. 
The basic reasoning here is that the largest t-statistic for a set of contrasts is significant if the overall F-statistic is significant. By following this step-wise procedure, we can determine which contrasts are contributing to the overall significance of the F-statistic. 
(credit: James W. MacDonald, Gordon K Smyth and `limma` help page)