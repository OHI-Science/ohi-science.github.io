### Biodiversity

People value biodiversity in particular for its existence value. The risk of species extinction generates great emotional and moral concern for many people. As such, this goal assesses **the conservation status of species based on the best available global data through two sub-goals: Species and Habitats**. Species were assessed because they are what one typically thinks of in relation to biodiversity. Because only a small proportion of marine species worldwide have been mapped and assessed, we also assessed Habitats as part of this goal, and considered them a proxy for condition of the broad suite of species that depend on them. We calculate each of these sub- goals separately and treat them equally when calculating the overall goal score. A score of 100 means all species are all species are at very low risk of extinction, and all habitats are conserved.

#### Sub-goal: Species
This sub-goal assesses the health of all marine species present in a region, including endangered species and species in relatively good conditions. The presence of higher-risk species leads to a higher score.

> Data for this goal are also used in Sense of Places sub-goal: Iconic Species. It will be effective for goal keepers of Biodiversity and Sense of Place to work together on data gathering.

**_Ideal Approach_**

Ideally, you would find data for all species present in your region including information on their _habitat ranges_ along with scientific studies that speak to the _health of their populations_.

**_Practical Guidance_**

You should start by trying to _find spatial information for species_ that occur in your area and determine _whether or not they have been scientifically assessed and given a conservation status_. It is best if you only use species for which there are both spatial data and an assessment. In the global assessment, we combined data from recent assessment the International Union for the Conservation of Nature [(IUCN)](http://www.iucnredlist.org/technical-documents/spatial-data) (www.iucnredlist.org/technical-documents/spatial-data) and [AquaMaps](http://aquamaps.org/) (aquamaps.org). These data sets provide a geographic snapshot of how total marine biodiversity is faring, even though it is a very small sub-sample of overall species diversity.

IUCN provides global species assessments that indicate the distribution and the conservation status of species, ranging from Least Concern to Critically Endangered to Extinct. These risk categories were turned into these into weights (between 0 and 1) for calculations. AquaMaps offers additional spatial data for species not covered by the IUCN distribution maps. Both evaluations chooses a taxon (e.g. sharks) and a group of world experts assess it comprehensively. Locally identified species identified in a regional assessment may not be in the global database because they do not belong to one of the taxa that have been selected for assessment, or because the experts that did the assessment did not know that information existed. In either case, there is no connection between what IUCN or AquaMaps report and what assessments are done locally. Therefore, it might not be fair to penalize a study area for missing species. For biodiversity, it is unrealistic to expect that all species are assessed, so it seems unfair to penalize for un-assessed species. In the fisheries goal, there are penalties for species that are exploited but not assessed, because if there are landings data, it means they are somewhat measurable, and so it is reasonable to expect they should be at least monitored.

<!-- It might be reasonable to penalize unassessed iconic species. It is a smaller list of species that are specifically identified as being of interest, for one reason or other. This would work for species that have some form of assessment - unless that information already exists, it might be unrealistic to try to produce the data layer required to develop a new model. -->

For regional assessments, local studies of marine species status and local datasets are best here. The spatial information can be a range map with simple presence or absence information, or it can have more detailed data. You can complement the species list search with a scientific literature search to see if anyone has scored the species status in a way that you can use. One thing to keep in mind when using local data sets is that _local lists might focus on endangered species and leave species in relatively good conditions un-assessed. This could result in poorer scores._

If spatial distribution information for individual species is not available, the goal model could be simplified to be based on threat-status-weighted average in your region.

You should also think about the **reference point** for scores that signal poor Biodiversity status. You can use the same threshold as the Global Assessments which say that _places with extinction risk scores greater than seventy-five percent will get scores of zero_. This is an estimation based on the literature of mass extinctions (e.g., Barnosky *et al*., 2011) and could be applied across scales. You don’t need all species extinct for there to be a zero, so you will have to choose how to rescale it, and whether the risk effects are linear or nonlinear.  

<span style="font-size:0.9em">

**_Additional Note: Defining spatial regions and map considerations_**

Once you have gathered the data, the treatment of it will matter for the model and goal score calculation. Do you know how the data were collected? Do you have information on sampling effort? If you don't know, you may not be sure whether changes in condition are due to monitoring efforts or biodiversity change, and you therefore may want to consider the uncertainty of your model.

In any case, the original logic of the **Species** sub-goal of the **Biodiversity** goal is to represent the species present relative to the proportion of their range within a given region. The goal is to summarize extinction risk for an area across assessed species, and assign it appropriately so that the loss of species scores poorly. You should consider whether the impacts to local species status are linear or non-linear. Will drawing borders affect how your scores are assigned?

When considering how to change the model, you should think about the outcome of the score on your decisions. For instance, will weighting a "Critically Endangered" species higher on the scale result in the inclusion or exclusion of more rare species? Will the way you aggregate spatial data to summarize extinction risk for your area take into account the influence of species with smaller ranges size, or will that information be lost in the averaging process? An inherent disadvantage for conservation may occur when rare species get rarer in the future, and will therefore have a relatively small influence on the score while common species drive the results.

 Range size has an impact on score results. For example, if you use the current model, none of the cone snail species listed below will have a big impact on the **Species** sub-goal score because to their small range size that covers one cell of map area. However,  the 0.8 score for *Conus roeckeli* shows that it is a rare species as assessed by the IUCN. On the other hand, the coral *Acropora palmata* is also rare and yet covers a large range.

Scientific name | IUCN Category | Trend | Map Cells
---------------|-----------------------------|-------------------|----|
*Conus salreiensis* | Critically Endangered |  Decreasing | 1
*Conus trochulus* |  Near Threatened |  Unknown | 1
*Conus roeckeli* | Least Concern | Unknown | 1
*Acropora palmata* | Critically Endangered | Stable | 1158

</span>


**_Examples of the Approach_**

<span style="font-size:0.9em">

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
--------|------------------------|-----------------|---------------------|
[**Global 2012**](http://ohi-science.org/assessment/global) | The status of assessed species was calculated as the area- and threat status-weighted average of the number of threatened species within each 0.5-degree global grid cell. Species distribution and threat category data came from the IUCN Global Marine Species Assessment.  | The reference point was to have all species at a risk status of Least Concern. We scaled the lower end of the biodiversity goal to be 0 when 75% species are extinct. | There were no measures of integrity measures included. The species chosen represents a partial sample of overall species diversity.
[**Global 2013 - 2015**](http://ohi-science.org/assessment/global) | The goal model was the same as Global 2012. There were data updates available for 15 out of 6,080 species. | The reference point was the same as Global 2012. | Updates were available for data used for this sub-goal.
[**Brazil 2014**](http://ohi-science.org/assessment/Brazil) | The status of 504 assessed species was calculated as the threat status-weighted average of species occurring in the Brazilian EEZ. The sub-goal was calculated at the national level, giving equal weight to all species occurring in Brazilian waters. Threat weights were assigned based on the IUCN threat categories status of each species. | The reference point was the same was Global 2012. | This study substituted global assessment data for regional data whenever available. This study did not weight by area of occurrence as in Global 2012 because distribution maps were not available for all species.
[**U.S. West Coast 2014**](http://ohi-science.org/assessment/US-West-Coast) | The model was the same as Global 2012, with regional data available for threat categories. | The same reference point was used as the Global model. | This followed the Global model, but used local data. This study did not weigh by area.
[**Israel 2014**](http://ohi-science.org/assessment/Israel) | The same as Global 2012. | Where all species within the region are classified with a risk status of Least Concern. | A list of species was composed based data from the Israel Marine Mammal Research and Assistance Center (IMMRAC) and cross-referenced with the IUCN data. Distribution maps were available for some species (from a global 0.5° grid). For those species not included in the distribution maps in the Mediterranean, data from assessments in the Black Seas were used. Additional data gap filling was done. 
[**Ecuador - Gulf of Guayaquil 2015**](http://ohi-science.org/assessment/Ecuador) | The approach is similar to Global 2012. This goal calculates the average IUCN threat category for all species in the study area, broken down by the type of habitat where they live. That average is weighted by the percentage of area occupied by each type of habitat in the Gulf region: soft bottom and hard bottom. | When all species are in the category of "least concern". | The species list was adopted from the IUCN Red List threat categories with aggregated species lists and 112 species from local sources. 
[**China 2015**](http://ohi-science.org/assessment/China) | Status model is similar to global assessments. However, average extinction risk of all assessed species was only calculated as the weighted sum of the number of species in each threat category, since habitat area per species is not obtainable. | The reference point is to have the risk status of all iconic species at lowest risk of extinction. | This study used a combination of local endangered species list and IUCN list. 

</span>

#### Sub-goal: Habitats
The Habitats sub-goal includes all habitats in the study area, and assess their health condition and coverage area.

>Habitat is included in the Biodiversity goal to provide a more complete picture of diversity in the system. This is because in global assessments assessed species data were limited and the diversity of habitats can be included with the assumption that healthier habitats mean healthier species. Therefore if you have comprehensive species assessments in your area you may not need to include all habitats as a sub-goal, instead only including living habitats (algae, corals) along with species in the Species sub-goal.

**_Ideal Approach_**

Ideally, information on the area extent (square kilometers) and condition of every habitat type would be available over a long period of time.

**_Practical Guidance_**

You will first find what habitats are in your study area, both in the _coastal regions_ and _offshore_. In the global assessments, data were available for mangroves, coral reefs, seagrass beds, salt marshes, sea ice, or subtidal soft-bottom habitats, but there are likely other important habitats in your region.

Once you determine what habitats are in your area, you will need information about _the area extent of each habitat_ within each region of your study area. You should consider whether and how far they go offshore and inland. Spatial data are preferred: you will be able to calculate the total square kilometers of each habitat within each region. For example, in global assessments mangrove area within 1 kilometer of the coastline were included, but this distance could change in OHI+ assessments.

You will need to include area and condition data specific to your study area and not rely on the global data provided. This is because the habitat data provided for your assessment are either over-representative by allocating the study area's data equally to each subcountry region, or can be misrepresentative by allocating a proportion of those data to each subcountry region (based on the offshore area of each region to the total area). Either case assumes that if a habitat was present in the country, it could be found anywhere (which is not the case with study areas that span many degrees of latitude), and the first case inflates the habitat coverage in the study area.

> TIP 1: Do you have maps that show current habitat distributions and maps that show historical habitat distributions? If so, you could extract that data for each of your regions to get a current and reference area. In the U.S. West Coast assessment (2014), researchers went to the local public library to find hand-drawn maps of historical salt marsh and sand dune extents in California. You could also use summarized habitat data that exists in tables or are already compiled in another source.

> TIP 2:  If local data is not available, you obtain certain habitat extent data from the global assessment, which used high resolution spatial extend data from this study:
<span style="font-size:0.9em">_Hamilton, S. & Casey, D. (2014). Creation of a high spatiotemporal resolution global database of continuous mangrove forest cover for the 21st Century (CGMFC-21): a big-data fusion approach. [arXiv:1412.0722](http://arxiv.org/ftp/arxiv/papers/1412/1412.0722.pdf)_.</span>
Good data to obtain from this study include shoreline, mangrove, soft bottom, and sea ice.

The _condition_ of the habitats can be measured in different ways, depending on the data available. Indicators of condition could include habitat density, susceptibility to pathogens, or change in species composition or growth rates from impacts such as overgrazing. Look for studies assessing habitat integrity or condition specifically in your area.

>In global assessments, direct information about coral condition was not available so it was based on the percentage of "living cover" on a coral reef relative to the potential range of the reef. In other words, estimates of coral cover within transects of certain sites were repeated in time and we used that rate of change in time as an indication of health of the reefs in the whole region. The difficulty lies in 1) having enough different locations sampled that you can say something about the whole region and 2) finding studies that did repeated measures in time, in the same location, over at least 20 years. In the Global 2013 assessment, there were so few datasets that satisfied this condition that we had to pool observations from different locations. Mean predicted values for each region from 1985-1987 were set as reference points.


If possible, you will want to gather habitat area and condition data through time so that you can calculate the **trend**. Ideally, there will be enough years of data to directly calculate the recent change in habitat condition as the trend. This isn't always the case, and proxies or estimates might need to be used. For example, due to spotty salt marsh data we created trend categories of increasing (0.5), stable (0), and decreasing (-0.5) based on available data.

The **reference point** will likely be based on historic habitat area coverage and condition, with the assumption that habitat destruction has been and still is occurring and the target is to return to some point in the past. You will need historical data for this, from satellites, published papers, or even hand-drawn maps. The challenge is to find a reference point that is both *ambitious* and *realistic* (based on the S.M.A.R.T. principles: see _Conceptual Guide_), using the data available. If data allow, it will be possible to set a reference point that is more ambitious than that used in global assessments.

Alternatively, the reference point could be guided by a policy target. For example, are there any climate change policies in your area, with defined targets and objectives? Are there any restoration or carbon storage projects in your area? Do any organizations offer guidance on the amount of carbon storage your management policies should be aiming for?

**_Examples of the Approaches_**

<span style="font-size:0.9em">

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
--------|------------------------|-----------------|---------------------|
[**Global 2012**](http://ohi-science.org/assessment/global) | The status was assessed for all habitats for mangroves, coral reefs, seagrass beds, salt marshes, sea ice edge, and subtidal soft-bottom habitats. Status was assessed as the average of the condition estimates for each habitat present in a region. | The reference years were between  1980-1995 and the current years were between 2001-2010. The current condition was compared 1980 for salt marshes and sand dunes, and it varied by site for seagrasses. | Anomalous values occurred due to data availability issues. A significant amount of pre-processing of the habitat data was needed to fill data gaps and resolve data quality issue
[**Global 2013 - 2015**](http://ohi-science.org/assessment/global) | The goal model was the same as 2012. | The reference was the same as Global 2013. | The same model as 2012 was used.
[**Brazil 2014**](http://ohi-science.org/assessment/Brazil) | The goal model was the same as as Global 2012 for mangroves, coral reefs, seagrass beds, salt marshes, and subtidal soft-bottom habitats. | The timeframes between current and reference condition varied across habitats using a 20-year gap. | Information from a few point estimates had to be used to infer the health of many habitats.
[**U.S. West Coast 2014**](http://ohi-science.org/assessment/US-West-Coast) | Salt marshes and seagrass beds were considered. Extent was used and habitat health was not used. | Temporal reference points were set for each habitat. For salt marshes, the percentage of pre-industrialized habitat coverage; for sand dunes, the habitat extent between the 1950s and 1960s. | The study required reconstructions of historic habitat extents in order to set more ambitious targets.
[**Israel 2014**](http://ohi-science.org/assessment/Israel) | The goal model is the same as Global 2012 for two habitats: sand dunes and soft-bottom habitats. | Reliable, comprehensive satellite photos from 1970 enabled an evaluation of the habitat extent of the sand dunes as its reference point. For soft-bottom habitat we utilized relevant pressure as a proxy of habitat conditions. | These habitats were chosen because they represent a large portion of regional coastal and marine environments and because they have data with relatively comprehensive temporal and spatial coverage. Other important habitats such as rocky reefs and the rocky intertidal could not be included due to lack of data on current and/or past spatial extent and condition. 
|[**Ecuador - Gulf of Guayaquil 2015**](http://ohi-science.org/assessment/Ecuador) | The approach is the same as Global 2012. Two types of habitats are considered: soft bottoms and mangroves. | For soft bottoms, the reference point was when is no deterioration of habitat due to the effects of trawling in the area. The reference point for mangroves was its extent in 1991. | 
[**China 2015**](http://ohi-science.org/assessment/China) | See Global 2012. | A temporal reference point for each habitat is set to its condition in 1980’s. | Three types of habitats were assessed: seagrasses, saltmarsh, and mangroves. Not all habitat exist in all provinces and time-series data of extent is poor for some. Time-series data on the condition of each habitat is not obtainable. However, rough estimate of relative change in coverage areas since the 1980’s was found in literature. 

</span>
