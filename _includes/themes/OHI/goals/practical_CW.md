### Clean Waters

People value marine waters that are free of pollution and debris for aesthetic and health reasons. Contamination of waters comes from oil spills, chemicals, eutrophication, algal blooms, disease pathogens (e.g., fecal coliform, viruses, and parasites from sewage outflow), floating trash, and mass kills of organisms due to pollution. People are sensitive to these phenomena occurring in areas that they access for recreation or other purposes as well as for simply knowing that clean waters exist. The Clean Water goal captures **the degree to which local waters are unpolluted by natural and human-made causes**. This goal scores highest when the contamination level is zero.

**_Ideal Approach_**

Ideally, data would be available and combined from different categories of marine pollution that can directly cause waters to become unsuitable for recreation, enjoyment, and other purposes. These factors typically include eutrophication (nutrients), chemicals, pathogens, oil pollution, and marine debris. Having good data from each of the desired categories, such as those pulled from a repeated effort at monitoring the conditions of the coasts, would be ideal. The Status of these components is the inverse of their intensity (i.e., high input is a bad status).

**_Practical Guidance_**

First think about what kind of point and non-point sources of pollution are in your area. Are there known sources of trash and marine debris? Is there a population that does not have access to sanitation? Does your wastewater get effectively treated before it is discharged into the environment? How does urban runoff contribute to your local coastal waters? Where possible, you should think about categories of inputs that are not used in the Global Assessments. These include information on toxic algal blooms, oil spills, turbidity or sediment input, and floating trash, and think about how they can fit in to the model areas.

<!-- | Input | Related data |
|-----|----------|
| Nutrients | Modeled plumes from land-based nitrogen inputs, fertilizer usage, algal blooms, eutrophication |
| Pathogens | Access to sanitation, population density, wastewater treatment |
| Chemicals | Organic pesticides, inorganic pesticides, toxic chemicals, chemicals from shipping, urban runoff |
| Trash | Floating trash, plastic inputs, uncollected waste |
| Other | Turbidity, altered sedimentation | -->

Once you identify the sources, you should try to find _in situ_ measurements of contamination. This could include monitoring data for pathogen levels, chemical contaminants, or data on the frequency and location of anoxic conditions or eutrophication. If direct measurements of water pollution are unavailable, indirect indicators, or proxy data, could be used. For example, land-based nutrients pollution is a proxy measure to nutrient input. The number of people who do not have improved access to sanitation could indicate the level of pathogen pollution.

If you don't have such information, or have partial information on one of these inputs, you could combine it with population data or model the data to estimate how much of an impact it has on coastal areas. Do you have population density information over time? You could then use this later to calculate the trend.

>In the 2012 Global Assessment, these data layers are scores spatially for 3 nm out from shore. This is because it concentrates the effect of the inputs to coastal regions and makes them visible to the shoreline. You can change this value in your spatial analysis.


You should use more refined data than the Global Assessment data, because they rely heavily on proxy data for water quality. However, you should follow the same approach of the _geometric mean_ to sum up the data layers that you find. This guarantees that if any one of the components scores poorly, the higher scores from other components will note hide the effect.


> The Clean Waters goal is connected to the **Pressures** layers. You should approach the both of them at the same time where possible. (See the sections on **Pressures and Resilience** to understand more.)

>In the Global Assessment, marine debris from plastic pollution is one of the pressures layers. The same data are also used in the **Clean Waters** goal, but they are inverted such that a low value of debris is a high score in the goal. This is commonly done for these interchangeable data layers.

For each contamination category, a reference point is set and all data in this category is scaled to 1. The type of **reference point** used will depend on the data available. You may decided that an ocean completely rid of pollution is ideal, or you may find that beach closure of less than 10 days per year due to _E.coli_ contamination is acceptable.

**_Examples of the Approach_**

<span style="font-size:0.9em">

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
---------------|------------------------------------------------|-----------------------------|-------------------|
[**Global 2012**](http://ohi-science.org/assessment/global) | The status was calculated as the geometric mean of four components, eutrophication (nutrients), chemicals, pathogens and marine debris.  | Reference point is when the contamination level is zero. |  The lack of direct measurements meant that modeled and proxy data were used. The status of this goal was also used in the pressures layers.  
[**Global 2013 - 2015**](http://ohi-science.org/assessment/global) | The model was same as Global 2012, with a few simplifications;  revenue data were adjusted by dividing by GDP per region, reported in 2013 USD. | The reference point was the same as Global 2012. | The approach was the same as Global 2012, with simplifications.
[**Brazil 2014**](http://ohi-science.org/assessment/Brazil) | The goal model was the same as Global 2012. Data used to model the components for eutrophication (nutrients) and chemicals was the same as in Global 2012, while pathogens and debris were localized to state level data.  | The reference point approach was the same as Global 2012.  | The study used better, or more local, data than the Global.
[**U.S. West Coast 2014**](http://ohi-science.org/assessment/US-West-Coast)  | The model was the same as Global 2012, with regional instead of global data. | The reference point was set as the number of days when beaches were closed to bathers because pathogen counts were higher than state standards. | The study used more local data than the Global. |
[**Israel 2014**](http://ohi-science.org/assessment/Israel) | The goal model was the same as Global 2012 with local data. | The reference points for each category of pollutants are government-set standards. | 
|[**Ecuador - Gulf of Guayaquil 2015**](http://ohi-science.org/assessment/Ecuador) | The approach is similar to Global 2012. The same four indicators were used. However, trend data were added as follows: Coastal human population as a proxy for trend in trash; Fertilizer consumption as a proxy for trend in nutrient pollution; Trends in access to improved sanitation as a proxy for trend in pathogen pollution; Pesticide consumption as a proxy for trend in chemical pollution. | The reference point is a zero pollution state for each of the components considered. | 
[**China 2015**](http://ohi-science.org/assessment/China) | Status model is similar to global assessments. Pollution is based on nitrogen, phosphate, chemical oxygen demand, and oil pollution. | The same reference point as Global 2012 was used that waters are free from all pollution. | The study used all local data. Data on pathogens and marine debris are poor or unavailable and thus were ignored in the model.
</span>
