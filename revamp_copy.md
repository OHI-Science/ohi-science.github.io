Notes to Lauren:

- There are a few figures embedded from Google Drive that can be used as-is or you can remake them if you are interested/have time (you have editing privledges)

# HOME PAGE

## Tagline: Open science with the Ocean Health Index
*do we like this tagline?*

## What is the Ocean Health Index?
The Ocean Health Index ('OHI') is a way to measure how healthy oceans are. Understanding the state of our oceans is a first step towards ensuring they can continue providing humans benefits now and in the future.

## What are OHI+ assessments?
OHI+ assessments use the OHI framework and are independently-led by anyone interested. OHI+ assessments are often conducted at smaller spatial scales with the purpose of informing marine policy.

## Where have assessments been done?
Assessments at the global scale have been completed from 2012-2015. Assessments have also been completed or are underway at smaller scales within coastal countries or groups of countries around the world.

## How do I get started?
We provide free instruction and software so you can conduct your own OHI+ assessment. There are four phases to the assessment process: Learn, Plan, Conduct, and Inform.

## Who we are
We are a team from the University of California at Santa Barbara and Conservation International that has been completing annual global assessments and developing a program to support OHI+ assessments.

# RESOURCES PAGE

## (Introductory 1-2 sentences)
*Julie*

## Tools
*1-2 sentence blurb*
*Jamie*

## Manual
The OHI Toolbox Manual, which provides instruction for the Conduct phase of the assessment process.
*do we want quick links to portions of the manual: install toolbox, etc?*

## Publications
A list of peer-reviewed publications by our OHI team plus reports and publications from OHI+ teams.

## Citation Policy
Please refer to our Citation Policy to reference methods, scripts, and data.


## Goal descriptions and approaches
*1-2 sentence blurb*
*Julie*


## Downloads
Downloadable resources and materials.

## Forum
Connect with the OHI community through the OHI Forum.

***

# TOOLS PAGE

The Ocean Health Index relies on open-source datasets, tools and resources to promote transparency and reproducibility. We use open-source analytical and collaborative tools, particularly [R](https://cran.r-project.org/), [RStudio](https://www.rstudio.com/) and [GitHub](https://github.com/). We also develop our own tools, which you can find here.

### Ocean Health Index Toolbox

The OHI Toolbox is used to calculate and visualize OHI assessment scores. The Toolbox has two parts: a personalized repository to organize and store information and write goal model equations specific to the local context, and the R package `ohicore`, which is the engine behind calculating and visualizing scores.

![](https://docs.google.com/drawings/d/1sXHn8zi_-XZkPDOGO1RrmhVGZcOEAHEpTfDGXYmUut8/pub?w=576&h=192)

You can explore [`ohicore`](https://github.com/OHI-Science/ohicore) and see existing OHI and OHI+ assessment repositories in [Projects](). To have a personal repository created for your assessment, please [contact us]().


### Cumulative Human Impacts

<!---Julie note:
I think we should have this earlier as its own thing. Feel free to edit...--->

Cumulative Human Impacts studies provide high-resolution map layers of combined human stressors on the world's ocean (Halpern et al. 2008, 2015). Many of these are used as pressures in global OHI assessments. Explore the [input data maps](https://knb.ecoinformatics.org/#data/query=(Halpern Cumulative human impacts)/page/0) and methods by topic:
  - <!---would be cool to list specific methods you've done, like for UV, OA, etc right from here--->
  - <!---also we could provide Mel's general script for OHI+ people to clip their pressures using their own polygons--->



Members of the OHI Science team have led workshops on different data science tools.  All materials including data, code and resources are held on GitHub and made freely available as part of the [eco-data-science](https://github.com/eco-data-science) GitHub organization.


<!---Julie note: I would recommend not putting our names: we don't attribute anything else by name and they can see who made the repo if they go to the link--->
- [Introduction to Git and GitHub](https://github.com/eco-data-science/github-intro) by Julie Stewart-Lowndes  
- [Introduction to spatial analysis in R](https://github.com/eco-data-science/spatial-analysis-R) by [Jamie Afflerbach](link to bio?)
- [RMarkdown](https://github.com/eco-data-science/rmarkdown_R) by Casey O'Hara  
- [Data Visualization](https://github.com/eco-data-science/VisualizingData) by Melanie Frazier    



### Additional Resources   

In addition to developing our own open-source tools to conduct annual assessments, the Ocean Health Index utilizes a variety of open-source tools and resources to find data, conduct analyses, document and share methods, and connect with the larger community.

These tools and datasets are often used and referenced in the process of updating the global OHI assessments.

**Data**  

- [Sea Around Us Project](http://www.seaaroundus.org)  

**Resources**  

- [RStudio Cheatsheets](https://www.rstudio.com/resources/cheatsheets/) are helpful 1-2 page documents that demonstrate core functionality of packages including ggplot2, dplyr, shiny and more.   
- [Git and GitHub](http://r-pkgs.had.co.nz/git.html) by Hadley Wickham  


***  


# PUBLICATIONS PAGE

Publications by the OHI team are listed below along with downloadable data. OHI+ reports and publications are also listed. Open access articles are indicated with a *.

## Peer-reviewed publications

### OHI assessments

**Global**

[Halpern et al. 2012](http://www.nature.com/nature/journal/v488/n7413/full/nature11397.html), *Nature*.
An index to assess the health and benefits of the global ocean.
[(original 2012 global data)](ftp://ohi.nceas.ucsb.edu/pub/data/2012/layers.html)  
[Halpern et al. 2015](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0117863), *PLoS ONE*\*.
Patterns and emerging trends in global ocean health.
[(2013 and updated 2012 global data)](https://github.com/OHI-Science/ohi-global/blob/master/eez2013/OHI2013_PLOS.zip?raw=true)  

**Brazil**

[Elfes et al. 2014](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0092589), *PLoS ONE*\*. A regional-scale Ocean Health Index for Brazil. [(data)](http://ohi.nceas.ucsb.edu/data/br-2012/)  

**Fiji**

[Selig et al. 2015](http://www.sciencedirect.com/science/article/pii/S2212041614001363), *Ecosystem Services*.
Measuring indicators of ocean health for an island nation: The Ocean Health Index for Fiji.   

**U.S. West Coast**

[Halpern et al. 2014](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0098995), *PLoS ONE*\*.
Assessing the health of the U.S. West Coast with a regional-scale application of the Ocean Health Index.
[(data)](https://github.com/OHI-Science/ohi-uswest/blob/master/USwest_PLOS.zip?raw=true)  

### OHI supporting methods

**Cumulative Human Impacts**

[Halpern et al. 2008](http://www.sciencemag.org/content/319/5865/948.abstract), *Science*.
A global map of human impact on marine ecosystems.
[(data)](https://www.nceas.ucsb.edu/globalmarine/impacts)  
[Halpern et al. 2015](http://www.nature.com/ncomms/2015/150714/ncomms8615/full/ncomms8615.html?message-global=remove&WT.ec_id=NCOMMS-20150715&spMailingID=49102925&spUserID=ODkwMTM2NjQyNgS2&spJobID=721894001&spReportId=NzIxODk0MDAxS0), *Nature Communications*\*.
Spatial and temporal changes in cumulative human impacts on the world's ocean.     
[(data)](https://knb.ecoinformatics.org/#view/doi:10.5063/F1S180FS)


**Reference points**

[Samhouri et al. 2012](http://www.esajournals.org/doi/abs/10.1890/ES11-00366.1), *Ecosphere*.
Sea Sick? Setting targets to assess ocean health and ecosystem services.  

**Goal weighting**

[Halpern et al. 2013](http://www.sciencedirect.com/science/article/pii/S0308597X13000286), *Marine Policy*.
Elicited preferences for components of ocean health in the California Current.   

**Multipliers**

[Jacobsen et al. 2014](http://www.sciencedirect.com/science/article/pii/S0308597X13002169), *Marine Policy*.
A global synthesis of the economic multiplier effects of marine sectors.   


**OHI goal models**

[Kleisner et al. 2013](http://link.springer.com/article/10.1007/s13280-013-0447-x), *AMBIO*.
Exploring patterns of seafood provision revealed in the global Ocean Health Index.  
[Selig et al. 2013](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0060284), *PLoS ONE*\*. Assessing global marine biodiversity status within a coupled socio-ecological perspective.   

## OHI+ documentation

**Israel**

Tsemel et al. 2014, *Ecology & Environment*. D Grade for the Mediterranean- Applying the Ocean Health Index to Israel. (in Hebrew).


# DOWNLOADS PAGE
*needs a new name, but essentially a list of mostly-downloadable resources with 1 sentence blurbs

eg:

- workshop materials--Erich
- presentations (pdfs and .htmls, and Mel's FIS presentation)--Erich
- archives of past manual versions
- informal resources (e.g. Mel's FIS presentation)
- fliers ('marketing materials')
- way to upload/embed videos (or link to vimeo/youtube)
- links to useful info/materials that we didn't create
- install_ohicore.r*

# PROJECTS PAGE
*Mel makes the map!*

## Introductory 1-2 sentences
*Julie*

*Erich for the following:*
## Global
*1 sentence blurb*

## Canada
*1 sentence blurb*

## U.S. West Coast
*1 sentence blurb*

## Brazil
*1 sentence blurb*

## Colombia
*1 sentence blurb*

## Ecuador
*1 sentence blurb*

...


# OHI+ PAGE

## Phases of an OHI+ assessment
*3 sentence blurb: really emphasize this isn't a one-time thing*
*Erich*

## Learn about the OHI
*3 sentence blurb*
*Erich*

## Plan an OHI+ assessment
*3 sentence blurb*
*Erich*

## Conduct an OHI+ assessment
*3 sentence blurb*
*Erich*

## Inform using OHI+ assessment results
*3 sentence blurb*
*Erich*

# ABOUT PAGE

## What is the Ocean Health Index?

Determining ocean health requires an approach that integrates social, economic, and environmental information. The Ocean Health Index (OHI) is an assessment framework that does this by measuring progress towards a suite of key societal ‘goals’ representing the benefits and services people expect healthy oceans to provide. By analyzing these goals together and scoring them from 0-100, OHI assessments result in a comprehensive picture of the state of the ecosystem and can be communicated to a wide range of audiences.  

Originally developed by an interdisciplinary team of scientists let by Halpern *et al*. and published in the journal *Nature* in 2012, the OHI framework is standardized yet customizable to different contexts and spatial scales. This is possible because the core framework of how goals are scored does not change while the goal models themselves are developed with local information and local decisions specific to the context.

![](https://docs.google.com/drawings/d/17ICJ7W0nGfDUKJ2ggBjsQGCpQM2plF940NhvHVQOe5w/pub?w=960&h=540)

Assessments using the OHI framework are facilitated by the OHI Toolbox, a suite of collaborative, open-source tools and instruction that provides structure for data organization and storage, data processing and goal modeling. The Toolbox enables assessments to be transparent, reproducible through access to detailed methods and computational code, repeatable with the ability to modify methods and computational code, and communicable with distillation and visualization to a wide audience.

For more information, please see our sister website at [www.OceanHealthIndex.org](www.OceanHealthIndex.org).


## What is OHI+?


## Who we are
*Include a contact us if you're interested in an OHI+ assessment*
*Julie*


## Citation Policy
*Mel and Jamie*


# FORUM PAGE
*3 sentence blurb with instructions*
*Julie*


# GOAL DESCRIPTIONS AND APPROACHES.

Global OHI assessments categorized and scored ten goals and eight sub-goals representing ocean-derived benefits to people. Most of the goals and sub-goals scored in global assessments will be relevant for OHI+ assessments, although it is important to critically evaluate this in each context. Once it is clear which goals should be assessed, it is important to develop a blueprint of how they would ideally be represented with models based on the knowledge the local system. These models will ultimately be developed with the information available and will likely differ from the ideal, but it is important to make the blueprint to highlight the intent of the goals and help identify the gaps in knowledge and information.

To help inform this process, below is information for each goal and sub-goal included in the global assessments. Along with the philosophy and how 'ideally' they might be modeled are descriptions of the approaches from completed assessments.

*Julie + Ning*
