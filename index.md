---
layout: page
title: Home
tagline: scientific tools and data for the Ocean Health Index
comments: true
---
{% include JB/setup %}

This website hosts the scientific tools and related products (such as manuals and data) for calculating the **Ocean Health Index**, whereas the main site [OceanHealthIndex.org](http://oceanhealthindex.org) delivers the public facing output of the Index.

Please check out our [ohi-news](http://groups.google.com/a/nceas.ucsb.edu/group/ohi-news) list serve for the latest news. You can subscribe for updates by sending an email to [ohi-news+subscribe@nceas.ucsb.edu](mailto:ohi-news+subscribe@nceas.ucsb.edu).

You can install the latest packages for the cross-platform, open-source [R](http://www.r-project.org) statistics software with the following:

```
library(devtools)
install_github('ohigui', 'OHI-Science')
```

If you don't already have `devtools` installed, then run `install.packages('devtools')` first. Next steps...

## Tools
We anticipate posting the following tools:
* **ohicore** - the R package of core functions for calculating the Index.
* **ohigui** - the graphical user interface using a web browser to communicate with R.
* **cumimpacts** - an ArcGIS toolbox for Cumulative Impacts Analysis.
* **ohi-arcgis** - an ArcGIS toolbox and Python functions for assistance with geographic data preparation.
* **ohi-opengis** - an open-source GIS toolbox and Python functions for assistance with geographic data preparation.

You can view and download the latest files at [https://github.com/ohi-science](https://github.com/ohi-science).

## Data
The data layers to calculate OHI will be posted for the following case studies:
* Global Nature 2012
* Global Web 2013
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
