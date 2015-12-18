---
layout: stripes
title: Tools
description: Tools
header: jellyfish
---

## Ocean Health Index 

The Ocean Health Index (OHI) is a framework to evaluate ocean health, first published in *Nature* in 2012. The framework has two parts: a core part that is the same for all assessments and a tailored part that details what is assessed and how it will be represented for any specific assessment. 

![](https://docs.google.com/drawings/d/1lDG36M2pBJ-7cQ4qwp2KB8lETIJtMjeqQPst20z8n6M/pub?w=576&h=96)

The OHI Science team uses the framework to conduct global assessments of ocean health annually from 2012-2015, with the 2016 assessment underway. The first global assessment was published accompanying the OHI framework in *Nature* 2012, and certain methods were improved for the second annual assessment published in *PLoS ONE* in 2015. Explore the [data and methods used for OHI global assessments](https://github.com/OHI-Science/ohi-global/releases), stored on GitHub. 

For more information, please see [publications](/resources/publications) about the OHI framework, assessments and supporting research, view [presentations](/resources/downloads) describing the framework, explore [current and on-going assessments](/projects), and learn more about [OHI goals](/goals).


## OHI Toolbox

The OHI Toolbox is used to calculate and visualize OHI assessment scores. Like the framework, the Toolbox has two parts: the core engine behind calculating and visualizing scores, which is an <font face="courier">R</font> package called <font face="courier">ohicore</font>, and a tailored repository to organize, store, and share information and write goal model equations specific to the local context.

![](https://docs.google.com/drawings/d/1wGK68NRn5bmhZo_gC2A9sx-AcpIZHVp45ID5_HQKVJ0/pub?w=576&h=96)

You can explore these repositories on GitHub. Core functions are in [<font face="courier">ohicore</font>](https://github.com/OHI-Science/ohicore). For examples of the tailored repositories, explore the [global assessments](https://github.com/OHI-Science/ohi-global/releases), which includes the data used to calculate OHI scores, the goal models, and the final scores and figures. Repositories for independently-led assessments (called 'OHI+' assessments) are listed in [Projects](/projects/index.md). Published assessments are listed in [Publications](/resources/publications/index.md).

The [OHI+ page](/phases) provides instruciton for how to lead OHI+ assessments. If you are interested in beginning an OHI+ assessment, please contact us: info at ohi-science.org.

{% assign color = 'color-light-2' %}
{% assign position = 'bottom-left' %}
{% include themes/OHI/diagonal %}

## Cumulative Human Impacts

Cumulative Human Impacts is a framework to evaluate the comprehensive effect of human stressors on global oceans. The framework and analysis at the global scale was first published in *Science* in 2008 and in *Nature Communications* in 2015 with a five-year comparison. In addition to global scales, this framework has been used to assess cumulative impacts at smaller spatial scales.

![](https://docs.google.com/drawings/d/1kfkfZ6wcRalYYsd5bzIcp7jk2B9TmQMnom1ySwUMVZQ/pub?w=576&h=96)

The high resolution spatial data from the 2015 analysis are currently available from the [Knowledge Base Network (KNB)](https://knb.ecoinformatics.org/#data/query=(Halpern Cumulative human impacts)/page/0) as <font face="courier">.tif</font> global rasters (Mollweide wgs84 coordinate reference system at ~ 1km resolution). [Download a figure](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/CHI_workflow.pdf) that illustrates the workflow for calculating Cumulative Human Impacts and the data that is available from KNB.


### Use in OHI analyses
Cumulative Human Impacts "raw stressor data" was used to obtain pressure information for the global OHI 2014 assessment, and these data can be similarly used at other spatial scales. For OHI+ assessments, these data can be extracted based on pre-defined Regions within the Assessment Area. This [Spatial Analysis in R](https://cdn.rawgit.com/eco-data-science/spatial-analysis-R/master/intro_spatial_data_R.html) tutorial is good resource for how to extract raster data by polygonal regions.

Some of the stressor data (and, in some cases, methods) has been updated since the publication of the 2015 Cumulative Human Impacts data. The updated data was used in the global OHI 2015 analysis to generate pressures data. The data sources and methods used to process these data are available from GitHub for the following stressors:  

- [Ocean Acidification](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_OceanAcidification/v2015)  
- [Sea Level Rise](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SeaLevelRise/v2015)  
- [Sea Surface Temperature](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SST)  
- [Ultraviolet Radiation](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_UV)  
- [Commercial Fishing](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_fishing/v2015)  
- [Marine Plastics](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/CW_pressure_trash)  



{% assign color = '' %}
{% assign position = 'bottom-right' %}
{% include themes/OHI/diagonal %}



## Data Science References
These are technical data science references that that are helpful for developing OHI assessments.

**Git and Github**  
- [Introduction to git and GitHub](https://github.com/eco-data-science/github-intro)  
- [git cheatsheets]()  <!---melanie can you save this in assets/downloads? --->

**R and RStudio**  
- [RMarkdown](https://github.com/eco-data-science/rmarkdown_R)   

**Spatial Analysis**  
- [Spatial analysis in R: Rasters](https://github.com/eco-data-science/spatial-analysis-R)  
- [Spatial analysis in R: Vectors](https://github.com/eco-data-science/spatial_analysis2_R)
- [Data visualization using ggmap - cheatsheet](https://github.com/OHI-Science/ohi-science.github.io/raw/3c6babb40348e62b322abadad086ece565411adf/assets/downloads/other/ggmapCheatsheet.pdf)
- [A primer on coordinate reference systems](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/CRS.pdf)
- [Dealing with color in R](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/ColorDec82015.pdf)


**Data Visualization**  
- [Data visualization using ggplot2](https://rawgit.com/eco-data-science/VisualizingData/master/ggplot2_intro.html)
- [Data visualization using ggplot2 - cheatsheet](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/ggplot2%20cheatsheet%20v2.pdf)


