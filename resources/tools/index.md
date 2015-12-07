---
layout: page
title: Tools
description: Tools
---

### Ocean Health Index

The Ocean Health Index is a framework to evaluate ocean health, first published in [Nature 2012] and in [PLoS one in 2015]. The OHI Science team uses the framework to conduct global assessments of ocean health annually. Here you will find tools used for OHI global assessments. Please see the [OHI+ page](/phases) to learn about assessments at different scales, or jump to the [OHI Manual](/manual) or [goal-by-goal page](/goals) for technical instructions, and [presentations](/resources/downloads).

This is the OHI Toolbox for the global assessment: 

![](fig of Tbx = ohicore + ohi-repo)

The ohi-global repo has data used to calculate the scores, the goal models developed, and the final scores and figures. ohicore is an Rpackage that has core functions used to calculate 
<link to repo, see releases for the publiblications. 

### Ocean Health Index Toolbox

The OHI Toolbox is used to calculate and visualize OHI assessment scores. The Toolbox has two parts: a personalized repository to organize and store information and write goal model equations specific to the local context, and the R package `ohicore`, which is the engine behind calculating and visualizing scores.

![](https://docs.google.com/drawings/d/1wGK68NRn5bmhZo_gC2A9sx-AcpIZHVp45ID5_HQKVJ0/pub?w=768&h=192)

You can explore [`ohicore`](https://github.com/OHI-Science/ohicore) and see existing OHI and OHI+ assessment repositories in [Projects](). To have a personal repository created for your assessment, please [contact us](info@ohi-science.org).


### Cumulative Human Impacts

Cumulative Human Impacts is a framework to evaluate the comprehensive effect of human stressors on oceans, first published in Science in 2008 and Nature Communications in 2015. This framework has been used to assess global oceans and smaller scales. link to KNB. Some of these are used in global Ocean Health Index assessments as pressures. [Links and wording Mel!]


Cumulative Human Impacts studies provide high-resolution map layers of human stressors on the world's ocean (Halpern et al. 2008, 2015). Many of these are used as pressures in global OHI assessments. Explore the [input data maps](https://knb.ecoinformatics.org/#data/query=(Halpern Cumulative human impacts)/page/0) and data processing methods by topic:  

- [Ocean Acidification](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_OceanAcidification/v2015)  
- [Sea Level Rise](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SeaLevelRise/v2015)  
- [Sea Surface Temperature](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_SST)  
- [Ultraviolet Radiation](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_UV)  
- [Commercial Fishing](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/Pressures_fishing)  
- [Marine Plastics](https://github.com/OHI-Science/ohiprep/tree/master/globalprep/CW_pressure_trash)  
  
  
These pressure layers are finalized as rasters with a resolution of 1km. They are freely available for download [here](https://knb.ecoinformatics.org/#view/doi:10.5063/F1S180FS). For global and regional OHI assessments, these spatial data layers can be extracted to pre-defined regions at any scale. This [Spatial Analysis in R](https://cdn.rawgit.com/eco-data-science/spatial-analysis-R/master/intro_spatial_data_R.html) tutorial is good resource for how to extract raster data by polygonal regions.
  
### Data Science References
These are technical data science references that the OHI team uses to develop OHI assessments. 

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

