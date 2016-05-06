## regions_get_master_list.r
# April 29, 2016 by @jules32

## Get master list of OHI and OHI+ countries from the private Google Spreadsheet 'OHI_CountriesMaster' 
## for display on ohi-science.org/projects
## https://docs.google.com/spreadsheets/d/1Xh8-36cLCEa_bppqLJu-nukVgPDT8xVEd9nxEaPYKKg/edit#gid=2018368498

#### setup ----
library(googlesheets) # install.packages('googlesheets') # by Jenny Bryan
library(dplyr)

## authorize googledocs -- requires user interaction with default browser
gs_auth(new_user = TRUE) 


#### read in Google Sheet ----
master_list <-  googlesheets::gs_title('OHI_CountriesMaster') %>% 
  googlesheets::gs_read()   
head(master_list)


#### parse information for display ----
## to be displayed, `display` column must have either 'point' or 'shapefile'


display_list <- master_list %>%
  select(country     = Country, 
         phase       = Phase,
         map_display = Map_Display,
         display     = Display,
         lat         = Latitude,
         lon         = Longitude) %>%
  filter(!is.na(display)) # remove rows that don't have point/shapefile
# tail(display_list)


## filter shapefiles to display
display_shp <-  display_list %>%
  filter(map_display == 'shapefile')

## determine whether any shapefiles have been added:
old <- read.csv("assets/maps/regions_shape.csv")
if(length(setdiff(display_shp$country, old$country))>0){
  warning('Countries with shapefiles have been added, will need to update the shapefile map')
}


## filter point data to display
display_pt <-  display_list %>%
  filter(map_display == 'point')

# error if not all fields have lat/lon data. See https://github.com/OHI-Science/issues/issues/625#issuecomment-217511758
if (NA %in% display_pt$lat | NA %in% display_pt$lon){
  stop(sprintf('Missing lat or lon field for region to be displayed. Must fix or will not map proplerly.\n'))
}


old <- read.csv("assets/maps/regions_point.csv")
if(length(setdiff(display_pt$country, old$country))>0){
  warning('Countries with points have been added, will need to update the point map')
}


if (nrow(display_pt) + nrow(display_shp) != nrow(display_list)) {
  warning('please make sure all the countries to display have either shapefiles or lat/longs')
}
 write.csv(display_shp, "assets/maps/regions_shape.csv", row.names=FALSE)        
 write.csv(display_pt, "assets/maps/regions_point.csv", row.names=FALSE)        
         
         
         