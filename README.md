<!-- README.md is generated from README.Rmd. Please edit that file -->
Live Training
=============

This is an empty repo for [Jared Lander's](https://www.jaredlander.com) [Live Training](https://www.safaribooksonline.com/live-training/courses/beginning-r-programming/0636920140665/).

Packages
========

To get started run the following code to install the latest version of the necessary packages.

``` r
packages <- c('coefplot', 'data.world', 'DBI', 'ggthemes', 'jsonlite', 
              'rprojroot', 'RSQLite', 'tidyverse', 'UsingR')
install.packages(packages)
```

Data
====

Data for the class is kept at [data.world](https://data.world/landeranalytics/training). Either download all the data files individually or source `prep/DownloadData.r`.

``` r
source('prep/DownloadData.r')
```
