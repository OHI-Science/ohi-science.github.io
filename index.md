---
layout: page
title: Home
tagline: scientific tools and data for the Ocean Health Index
comments: true
---
{% include JB/setup %}

This website hosts the scientific tools and related products (such as manuals and data) for calculating the **Ocean Health Index (OHI)**, whereas the main site [OceanHealthIndex.org](http://oceanhealthindex.org) delivers the public facing output of the Index.


## Publications
Here are Ocean Health Index publications:
* **[Halpern et al. (2008)](http://www.sciencemag.org/content/319/5865/948.abstract)** A Global Map of Human Impact on Marine Ecosystems. *Science*. ([data](http://www.nceas.ucsb.edu/globalmarine))
* **[Halpern et al. (2012)](http://www.nature.com/nature/journal/v488/n7413/full/nature11397.html)** An index to assess the health and benefits of the global ocean. *Nature*. ([data](ftp://ohi.nceas.ucsb.edu/pub/data/2012/layers.html))
* **[Samhouri et al. (2012)](http://www.esajournals.org/doi/abs/10.1890/ES11-00366.1)** Sea Sick? Setting targets to assess ocean health and ecosystem services. *Ecosphere*.
* **[Selig et al. (2013)](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0060284)** Assessing Global Marine Biodiversity Status within a Coupled Socio-Ecological Perspective. *PLoS ONE*.
* **[Kleisner et al. (2013)](http://link.springer.com/article/10.1007/s13280-013-0447-x)** Exploring Patterns of Seafood Provision Revealed in the Global Ocean Health Index. *AMBIO*.
* **[Elfes et al. (2014)](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0092589)** A Regional-Scale Ocean Health Index for Brazil. *PLoS ONE*. ([data](http://ohi.nceas.ucsb.edu/data/br-2012/))
* **[Halpern et al. (2014)](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0098995)** Assessing the Health of the U.S. West Coast with a Regional-Scale Application of the Ocean Health Index. *PLoS ONE*. 



## Supporting Documents
Here is further conceptual and technical information about the Ocean Health Index:  
* **[Global 2013 updated methods](http://www.nceas.ucsb.edu/~jstewart/Halpern_etal_SuppInfo_Global2013.pdf)** - updated methods and data descriptions for the second annual OHI global assessment: 2013.
* **[The OHI Conceptual Guide](http://www.nceas.ucsb.edu/~jstewart/OHIGuide_v2.pdf)** - (v2) - OHI philosophy and goal model development at global and regional scales.
* **[The OHI Conceptual Guide Philosophy Highlights](http://www.nceas.ucsb.edu/~jstewart/OHIGuide_PhilosophyHighlights_v2.pdf)** - (v2) - Highlights from the Conceptual Guide regarding OHI goal philosophy.
* **[The OHI Conceptual Guide Goal Model Highlights](http://www.nceas.ucsb.edu/~jstewart/OHIGuide_ModelHighlights_v1.pdf)** - (v1) - Highlights from the Conceptual Guide regarding OHI goal models.
* **[How To Gather Data](http://www.nceas.ucsb.edu/~jstewart/HowTo_GatherAppropriateData_v2.pdf)** - (v2) - short instruction on data discovery and acquisition for OHI.
* **[How To Format Data](http://www.nceas.ucsb.edu/~jstewart/HowTo_FormatDataForToolbox_v1.xlsx)** - (v1) - short instruction on proper data formatting required by the OHI Toolbox.
* **[How To Calculate Pressures](http://www.nceas.ucsb.edu/~jstewart/HowTo_CalculatePressures_v2.xlsx)** - (v2) - short instruction on pressures matrices and calculations.
* **[How To Calculate Resilience](http://www.nceas.ucsb.edu/~jstewart/HowTo_CalculateResilience_v2.xlsx)** - (v2) - short instruction on resilience matrices and calculations.
* **[The OHI Toolbox Manual](http://www.nceas.ucsb.edu/~jstewart/OHI_ToolboxManual_v2.pdf)** - (v2) - technical instructions for running the Toolbox App.
* **[Frequently Asked Questions](http://www.nceas.ucsb.edu/~jstewart/OHI_RegionalAssessments_FAQ_v1.pdf)** - (v1) - frequently asked questions regarding regional assessments.

## Install
The OHI Toolbox App enables users to explore the data involved in calculating Global 2013 scores and to conduct regional assessments. You can install and launch the latest OHI application from the cross-platform, open-source [R](http://www.r-project.org) statistics software by following the instructions at our [Install](/pages/install.html). The Toolbox App is under development; for any problems with installation or running the app, please check our [Troubleshooting](/pages/troubleshoot.html) page.

Here's a 10.5 minute video demonstrating how to **Install and Explore the Ocean Health Index Toolbox App** as a:
<ul><li>online <a href="http://www.youtube.com/watch?feature=player_embedded&amp;v=v8Dtke2y2uE" target="_blank">YouTube video<br><img src="http://img.youtube.com/vi/v8Dtke2y2uE/mqdefault.jpg" alt="Install and Explore the Ocean Health Index Toolbox App" border="2"/></a></li><li>or downloadable <a href="http://ohi.nceas.ucsb.edu/video/ohi_app_install_explore.wmv">Windows media video</a> (29 MB)</li></ul>


## Tools
Here's an overview of the anticipated and current status of tools:
* **ohicore** - the R package of core functions for calculating the Index. Find the latest at [github.com/ohi-science/ohicore](http://github.com/ohi-science/ohicore).
* **ohigui** - the graphical user interface using a web browser to communicate with R. Find the latest at [github.com/ohi-science/ohigui](http://github.com/ohi-science/ohigui).
* **cumimpacts** - an ArcGIS toolbox for Cumulative Impacts Analysis. Find the latest at [github.com/ohi-science/cumimpacts](https://github.com/OHI-Science/cumimpacts).
* **ohi-arcgis** - an ArcGIS toolbox and Python functions for assistance with geographic data preparation. Here's an example script to [Create Regions](/pages/create_regions.html) specific to your country.
* **ohi-opengis** - an open-source GIS toolbox and Python functions for assistance with geographic data preparation.

You can view and download the latest files at [https://github.com/ohi-science](https://github.com/ohi-science).

## Data
Here's the current status and anticipated OHI data packages by scenario:
* Global Nature 2012 ([data](ftp://ohi.nceas.ucsb.edu/pub/data/2012/layers.html))
* Global Web 2013 ([layers.zip](http://github.com/OHI-Science/ohicore/raw/master/inst/extdata/layers.Global2013.www2013.zip) or full [scenario.zip](http://github.com/OHI-Science/ohicore/raw/master/inst/extdata/scenario.Global2013.www2013.zip))
* Brazil 2013 ([data](http://ohi.nceas.ucsb.edu/data/br-2012/))
* US West Coast 2013 ([data](https://github.com/ohi-science/ohi-uswest/))


## News
Please check out our [ohi-news](http://groups.google.com/a/nceas.ucsb.edu/group/ohi-news) list serve for the latest news. You can subscribe for updates by sending an email to [ohi-news+subscribe@nceas.ucsb.edu](mailto:ohi-news+subscribe@nceas.ucsb.edu).

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

Please direct any questions or comments to Ben Best ([bbest@nceas.ucsb.edu](mailto:bbest@nceas.ucsb.edu)).
