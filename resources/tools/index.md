---
layout: stripes
title: Tools
description: Tools
header: jellyfish
---

Our team has developed tools for quantifying human impacts on and benefits from marine systems, including conceptual frameworks, computational code, data products, and training materials. We believe stongly in open science, using open-source tools such as <font face="courier">R</font> and share our work on GitHub as much as possible. These tools are constantly being used, evaluated, improved and updated. 

## Ocean Health Index 

**The Ocean Health Index (OHI) is a framework** to comprehensively and quantitatively evaluate ocean health. A healthy ocean is defined as one that sustainably delivers a range of benefits to people now and in the future. The framework was first published in *Nature* in 2012 and has two parts: a core part that is the same for all assessments and a tailored part that details what is assessed and how it will be represented for any specific assessment. 

![](https://docs.google.com/drawings/d/1lDG36M2pBJ-7cQ4qwp2KB8lETIJtMjeqQPst20z8n6M/pub?h=150)

**Assessments using the OHI framework** can be conducted at different spatial scales and contexts. The OHI Science team uses the framework to conduct global assessments of ocean health annually from 2012-2015, with the 2016 assessment underway. The first global assessment was published accompanying the OHI framework in *Nature* 2012, and certain methods were improved for the second annual assessment published in *PLoS ONE* in 2015. With each annual assessment, models incoporate the most updated input information and processing techniques are evaluated and improved. Explore the <a href="https://github.com/OHI-Science/ohi-global/releases" target="_blank">data and methods used for OHI global assessments (including Antarctica and the High Seas)</a>, stored on GitHub. 

For more information, please see [publications](/resources/publications) about the OHI framework, assessments and supporting research, view [presentations](/resources/downloads) describing the framework, explore [current and on-going assessments](/projects), and learn more about [OHI goals](/goals).


## OHI Toolbox

**The OHI Toolbox** is used to calculate and visualize scores for assessments using the OHI framework. Like the framework, the Toolbox has two parts: the core engine behind calculating and visualizing scores, which is an <font face="courier">R</font> package called <font face="courier">ohicore</font>, and a tailored repository to organize, store, and share information and write goal model equations specific to the local context.

![](https://docs.google.com/drawings/d/1wGK68NRn5bmhZo_gC2A9sx-AcpIZHVp45ID5_HQKVJ0/pub?h=150)

You can explore these repositories on GitHub. Core OHI functions are in <a href="https://github.com/OHI-Science/ohicore" target="_blank"><font face="courier">ohicore</font></a>. For examples of the tailored repositories, explore the <a href="https://github.com/OHI-Science/ohi-global/releases" target="_blank">global assessments</a>, which includes the data used to calculate OHI scores, the goal models, and the final scores and figures. Repositories for independently-led assessments (called 'OHI+' assessments) are listed in [Projects](/projects). Published assessments are listed in [Publications](/resources/publications).

The [OHI+ page](/phases) provides instruction for leading OHI+ assessments. If you are interested in beginning an OHI+ assessment, please contact us at info@ohi-science.org.

{% assign color = 'color-light-2' %}
{% assign position = 'bottom-left' %}
{% include themes/OHI/diagonal %}


## Cumulative Human Impacts

**Cumulative Human Impacts is a framework** to evaluate the comprehensive effect of human stressors on global oceans. The framework and analysis at the global scale was first published in *Science* in 2008 and a five-year comparison of the global analysis was published in *Nature Communications* in 2015. In addition to global scales, this framework has been used to assess cumulative impacts at smaller spatial scales.

![](https://docs.google.com/drawings/d/1kfkfZ6wcRalYYsd5bzIcp7jk2B9TmQMnom1ySwUMVZQ/pub?w=576&h=96)

The high resolution spatial data from the 2015 analysis are currently available from the [Knowledge Base Network <a href="https://knb.ecoinformatics.org/#view/doi:10.5063/F19Z92TW" target="_blank">KNB</a> as *<font face="courier">.tif</font>* global rasters (Mollweide wgs84 coordinate reference system at ~ 1km resolution). [Download a figure](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/CHI_workflow.pdf) that illustrates the workflow for calculating Cumulative Human Impacts and the data that are available from KNB.


### Use in OHI analyses
Cumulative Human Impacts "raw stressor data" was used to obtain pressure information for the OHI global assessments, and these data can be similarly processed for use at different spatial scales. For OHI+ assessments, these data can be extracted based on pre-defined Regions within the Assessment Area. Our <a href="https://cdn.rawgit.com/eco-data-science/spatial-analysis-R/master/intro_spatial_data_R.html" target="_blank">Spatial analysis in R: Rasters</a> tutorial is good resource for how to extract raster data by polygonal regions.

Some of the stressor data, and some methods, has been updated since the publication of the 2015 Cumulative Human Impacts data. The updated data were used in the global OHI 2015 analysis to generate pressures data. The data sources and methods used to process these data are available from GitHub for the following stressors:  

- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_OceanAcidification/v2015" target="_blank">Ocean Acidification</a>  
- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SeaLevelRise/v2015" target="_blank">Sea Level Rise</a>  
- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SST" target="_blank">Sea Surface Temperature</a>  
- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_UV" target="_blank">Ultraviolet Radiation</a>  
- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_fishing/v2015" target="_blank">Commercial Fishing</a>  
- <a href="https://github.com/OHI-Science/ohiprep/tree/master/globalprep/CW_pressure_trash" target="_blank">Marine Plastics</a>  



{% assign color = '' %}
{% assign position = 'bottom-right' %}
{% include themes/OHI/diagonal %}



## Data Science References
These are technical data science references that are helpful for many uses, including OHI assessments.

**Git and Github**  
- <a href="https://github.com/eco-data-science/github-intro" target="_blank">Introduction to git and GitHub</a>  
- [git cheatsheets]()  <!---melanie can you save this in assets/downloads? --->

**R and RStudio**  
- <a href="https://github.com/eco-data-science/rmarkdown_R" target="_blank">RMarkdown</a>   

**Spatial Analysis**  
- <a href="https://github.com/eco-data-science/spatial-analysis-R#introduction-to-spatial-analysis-in-r" target="_blank">Spatial analysis in R: Rasters</a>  
- <a href="https://github.com/eco-data-science/spatial_analysis2_R#r-spatial-analysis-workshop-vectors-polygons-and-shapefiles" target="_blank">Spatial analysis in R: Vectors</a>  
- [Data visualization using ggmap - cheatsheet](https://github.com/OHI-Science/ohi-science.github.io/raw/3c6babb40348e62b322abadad086ece565411adf/assets/downloads/other/ggmapCheatsheet.pdf)  
- [A primer on coordinate reference systems](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/CRS.pdf)  
- [Dealing with color in R](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/ColorDec82015.pdf)  


**Data Visualization**  
- <a href="https://rawgit.com/eco-data-science/VisualizingData/master/ggplot2_intro.html" target="_blank">Data visualization using ggplot2</a>  
- [Data visualization using ggplot2 - cheatsheet](https://github.com/OHI-Science/ohi-science.github.io/raw/dev/assets/downloads/other/ggplot2%20cheatsheet%20v2.pdf)


