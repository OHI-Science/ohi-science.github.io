---
layout: page
title: Home
tagline: scientific tools and data for the Ocean Health Index
comments: true
---
{% include JB/setup %}

This website hosts the scientific tools and related products (such as manuals and data) for calculating the **Ocean Health Index**, whereas the main site [OceanHealthIndex.org](http://oceanhealthindex.org) delivers the public facing output of the Index.

Please check out our [ohi-news](http://groups.google.com/a/nceas.ucsb.edu/group/ohi-news) list serve for the latest news. You can subscribe for updates by sending an email to [ohi-news+subscribe@nceas.ucsb.edu](mailto:ohi-news+subscribe@nceas.ucsb.edu).

You can install and launch the latest OHI application from the cross-platform, open-source [R](http://www.r-project.org) statistics software (install R on [Windows](http://cran.rstudio.com/bin/windows/base/) or [Mac](http://cran.rstudio.com/bin/macosx/)) with the following:

{% highlight R %}
if (!require(devtools)){
  install.packages('devtools')
  require(devtools)
} 
install_github('rCharts', 'bbest')
install_github('ohicore', 'ohi-science')
install_github('ohigui' , 'ohi-science')
ohigui::launchApp()

{% endhighlight %}

While not necessary, we recommend using the [RStudio](http://www.rstudio.com/ide/) as your R interface for easier reading of R code in files and overall integrated development environment.

Meanwhile, you can .

## Tools
Here's an overview of the anticipated and current status of tools:
* **ohicore** - the R package of core functions for calculating the Index. Find the latest at [github.com/ohi-science/ohicore](http://github.com/ohi-science/ohicore).
* **ohigui** - the graphical user interface using a web browser to communicate with R. Find the latest at [github.com/ohi-science/ohigui](http://github.com/ohi-science/ohigui).
* **cumimpacts** - an ArcGIS toolbox for Cumulative Impacts Analysis.
* **ohi-arcgis** - an ArcGIS toolbox and Python functions for assistance with geographic data preparation. Here's an example script to [Create Regions](/pages/create_regions.html) specific to your country.
* **ohi-opengis** - an open-source GIS toolbox and Python functions for assistance with geographic data preparation.

You can view and download the latest files at [https://github.com/ohi-science](https://github.com/ohi-science).

## Data
Here's the current status and anticipated OHI data packages by scenario:
* Global Nature 2012 ([data](ftp://ohi.nceas.ucsb.edu/pub/data/2012/layers.html))
* Global Web 2013 ([layers.zip](http://github.com/OHI-Science/ohicore/raw/master/inst/extdata/layers.Global2013.www2013.zip) or full [scenario.zip](http://github.com/OHI-Science/ohicore/raw/master/inst/extdata/scenario.Global2013.www2013.zip))
* Brazil 2013
* US West Coast 2013

## Publications
Here are a couple seminal publications:
* Halpern et al (2008) A Global Map of Human Impact on Marine Ecosystems. Science. ([article](http://www.sciencemag.org/content/319/5865/948.abstract), [data](http://www.nceas.ucsb.edu/globalmarine))
* Halpern et al (2012) An index to assess the health and benefits of the global ocean. Nature. ([article](http://www.nature.com/nature/journal/v488/n7413/full/nature11397.html), [data](ftp://ohi.nceas.ucsb.edu/pub/data/2012/layers.html))

## News
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

Please direct any questions or comments to Ben Best ([bbest@nceas.ucsb.edu](mailto:bbest@nceas.ucsb.edu)).
