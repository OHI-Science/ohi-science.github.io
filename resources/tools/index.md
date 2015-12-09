---
layout: page
title: Tools
description: Tools
---

### Ocean Health Index

The Ocean Health Index is a framework to evaluate ocean health, first published in Nature [2012](http://www.nature.com/nature/journal/v488/n7413/full/nature11397.html) and in PLoS ONE in [2015](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0117863). The OHI Science team uses the framework to conduct global assessments of ocean health annually. Here you will find tools used for OHI global assessments. Please see the [OHI+ page](/phases) to learn about assessments at different scales, [presentations](/resources/downloads) for general information about the framework, or jump to the [OHI Manual](/manual) or [goal-by-goal page](/goals) for technical instructions.


<p align = 'center'>![](https://docs.google.com/drawings/d/1lDG36M2pBJ-7cQ4qwp2KB8lETIJtMjeqQPst20z8n6M/pub?w=576&h=96)

#### Ocean Health Index Toolbox

The Ocean Health Index Toolbox is used to calculate and visualize OHI assessment scores. The Toolbox has two parts: the core engine behind calculating and visualizing scores, which is an `R` package called `ohicore`, and a tailored repository to organize and store information and write goal model equations specific to the local context,.

<p align = 'center'>![](https://docs.google.com/drawings/d/1wGK68NRn5bmhZo_gC2A9sx-AcpIZHVp45ID5_HQKVJ0/pub?w=576&h=96)

You can explore these repositories on GitHub. Core functions are in  [`ohicore`](https://github.com/OHI-Science/ohicore).  For examples of the tailored repositories, explore the global analyses at [ohi-global](https://github.com/OHI-Science/ohi-global), which includes the data used to calculate OHI scores, the goal models, and the final scores and figures. Other OHI+ assessment repositories are available in [Projects](/projects/index.md). Published assessments are listed in [Publications](/resources/publications/index.md).

 To have a tailored repository created for your assessment, please [contact us](info@ohi-science.org).


### Cumulative Human Impacts

Cumulative Human Impacts is a framework to evaluate the comprehensive effect of human stressors on global oceans, first published in Science in [2008](http://imedea.uib-csic.es/master/cambioglobal/Modulo_V_cod101624/Documentos%20Sesi%C3%B3n%201/Halpern%20et%20al%20(Science,%202008) and then Nature Communications in [2015](http://www.nature.com/ncomms/2015/150714/ncomms8615/full/ncomms8615.html). This framework has been used to assess cumulative impacts on global oceans and at smaller spatial scales.

The high resolution spatial data from the 2015 analysis are currently available from the [Knowledge Base Network (KNB)](https://knb.ecoinformatics.org/#data/query=(Halpern Cumulative human impacts)/page/0) as `.tif` global rasters (Mollweide wgs84 coordinate reference system at ~ 1km resolution). This figure describes the workflow for calculating Cumulative Human Impacts and the data that is available from KNB:


#### Use in OHI analyses
Cumulative Human Impacts "raw stressor data" was used to obtain pressure information for the global OHI 2014 assessment, and these data can be similarly used at other spatial scales. For OHI+ assessments, these data can be extracted based on pre-defined Regions within the Assessment Area. This [Spatial Analysis in R](https://cdn.rawgit.com/eco-data-science/spatial-analysis-R/master/intro_spatial_data_R.html) tutorial is good resource for how to extract raster data by polygonal regions.

![](https://docs.google.com/drawings/d/1Coh9NxZ2zRfx-MdtRTS6ilwidfj011xldtOQTKq9-Ms/pub?w=1440&h=1080)

Some of the stressor data (and, in some cases, methods) has been updated since the publication of the 2015 Cumulative Human Impacts data. The updated data was used in the global OHI 2015 analysis to generate pressures data. The data sources and methods used to process these data are available from GitHub for the following stressors:  

- [Ocean Acidification](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_OceanAcidification/v2015)  
- [Sea Level Rise](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SeaLevelRise/v2015)  
- [Sea Surface Temperature](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SST)  
- [Ultraviolet Radiation](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_UV)  
- [Commercial Fishing](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_fishing)  
- [Marine Plastics](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/CW_pressure_trash)  


### Data Science References
These are technical data science references that that are helpful for developing OHI assessments.

**Git and Github**  
- [Introduction to Git and Github](https://github.com/eco-data-science/github-intro)  
- [git cheatsheets]()  <!---melanie can you save this in assets/downloads? --->

**R and RStudio**  
- [RMarkdown](https://github.com/eco-data-science/rmarkdown_R)   

**Spatial Analysis**  
- [Spatial Analysis in R: Rasters](https://github.com/eco-data-science/spatial-analysis-R)  
- [Spatial Analysis in R: Vectors](https://github.com/eco-data-science/spatial_analysis2_R)

**Data Visualization**  
- [Data Visualization using ggplot2](https://github.com/eco-data-science/VisualizingData)
- [ggplot cheatsheet](https://github.com/OHI-Science/ohi-science.github.io/raw/3c6babb40348e62b322abadad086ece565411adf/assets/downloads/other/ggmapCheatsheet.pdf)
