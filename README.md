<!-- README.md is generated from README.Rmd. Please edit that file -->
Live Training
=============

This is an empty repo for [Jared Lander's](https://www.jaredlander.com) [Live Training](https://www.safaribooksonline.com/live-training/courses/beginning-r-programming/0636920140665/).

Clone this Repo
===============

If you use git please clone this repo then open it as an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

``` sh
# if using SSH
git clone git@github.com:jaredlander/LiveJanuary2018.git

# if using https
git clone https://github.com/jaredlander/LiveJanuary2018.git
```

If you don't use git, then please recreate this folder structure, and download `prep/DownloadData.r`, on your computer and open the `LiveJanuary2018.Rproj` file using RStudio.

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

This script requires that you are using an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

``` r
source('prep/DownloadData.r')
```
