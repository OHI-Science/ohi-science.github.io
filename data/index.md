---
title: "Data"
description: Data
group: navigation
header: donastia.jpg
layout: page
tagline: Access data
comments: no
---

We enthusiastically support the use of our data, but please [cite our work](http://ohi-science.org/citation-policy/)!

Global Ocean Health Index assessments require synthesizing highly heterogeneous information from nearly one hundred sources.  Data from each source are formatted and used to calculate Index scores using freely available coding and version control software.  One of our goals is to make all our data and methods available to anyone who wants to further explore our results or use the data for other projects. One exception to our policy of providing data is that we do not provide unaltered data obtained from other sources, you will need to go the original data sources, described in our data preparation files, to obtain those data.

Here we direct you to the data and methods from the global Ocean Health Index as well as other related projects. 

### Global OHI assessments
[Download]((http://ohi-science.org/ohi-global/download)) index scores, goal models, data, and methods from the 2016 assessment.

### Supplementary files for global OHI assessments
Including: [region files](https://mazu.nceas.ucsb.edu/data/#ohi_regions); [mangrove data](https://mazu.nceas.ucsb.edu/data/#mangrove_data); and [Net Primary Productivity data](https://mazu.nceas.ucsb.edu/data/#net_primary_productivity_data). 

### Pressure data for global OHI assessments
These [global raster data](https://mazu.nceas.ucsb.edu/data/#ohi_pressure_data) were used to obtain several of the pressure data layers in the 2016 global assessment. These data may be useful for regional OHI assessments.  We provide these data through our ftp site because the files are too large to provide through Github.

### Cumulative human impacts data
These data map recent change over 5 years in cumulative impacts to marine ecosystems globally from fishing, climate change, and ocean- and land-based stressors from 2008 to 2013 ([Halpern et al. 2015](https://www.nature.com/articles/ncomms8615)). Seven data packages are available for this project:

1. [supplementary data (habitat data and other files)](https://knb.ecoinformatics.org/#view/doi:10.5063/F19Z92TW); 
2. [raw stressor data (2008 and 2013)](https://knb.ecoinformatics.org/#view/doi:10.5063/F1S180FS); 
3. [stressor data rescaled by one time period (2008 and 2013, scaled from 0-1)](https://knb.ecoinformatics.org/#view/doi:10.5063/F1DR2SDD); 
4. [stressor data rescaled by two time periods (2008 and 2013, scaled from 0-1)](https://knb.ecoinformatics.org/#view/doi:10.5063/F19021PC); 
5. [pressure and cumulative impacts data (2013, all pressures)](https://knb.ecoinformatics.org/#view/doi:10.5063/F15718ZN); 
6. [pressure and cumulative impacts data (2008 and 2013, subset of pressures updated for both time periods)](https://knb.ecoinformatics.org/#view/doi:10.5063/F11J97N3); 7. [change in pressures and cumulative impact (2008 to 2013)](https://knb.ecoinformatics.org/#view/doi:10.5063/F1WS8R5T) 

Here is an overview of the calculations: Raw stressor data -> rescaled stressor data (values between 0-1) -> pressure data (stressor data after adjusting for habitat/pressure vulnerability) -> cumulative impact (sum of pressure data) -> difference between 2008 and 2013 pressure and cumulative impact data. 

All raster files are .tif format and coordinate reference system is mollweide wgs84. 

