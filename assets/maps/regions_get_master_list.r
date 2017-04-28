## regions_get_master_list.r
# April 29, 2016 by @jules32

## Get master list of OHI and OHI+ countries from the private Google Spreadsheet 'OHI_CountriesMaster' 
## for display on ohi-science.org/projects/ohi-assessments
## https://docs.google.com/spreadsheets/d/1Xh8-36cLCEa_bppqLJu-nukVgPDT8xVEd9nxEaPYKKg/edit#gid=2018368498

#### setup ----
library(googlesheets) # install.packages('googlesheets') # by Jenny Bryan
library(tidyverse)
library(readr)

## authorize googledocs -- requires user interaction with default browser
gs_auth(new_user = TRUE) 


#### read in Google Sheet, previously gs_title('OHI_CountriesMaster')----
master_list <-  googlesheets::gs_url('https://docs.google.com/spreadsheets/d/1Xh8-36cLCEa_bppqLJu-nukVgPDT8xVEd9nxEaPYKKg/edit#gid=2018368498') %>% 
  googlesheets::gs_read()   
head(master_list)

### archive copy of the Google Sheet in PRIVATE ohidev repo (not here); will need to push that repo too. 
write.csv(master_list, 
          paste0('~/github/ohidev/OHI_CountriesMaster/OHI_CountriesMaster_', Sys.Date(), '.csv'))


#### parse information for display ----
## to be displayed, `display` column must have either 'point' or 'shapefile'
display_list <- master_list %>%
  dplyr::select(country     = Country, 
         ohi_plus    = OHI_plus,
         phase       = Phase,
         map_display = Map_Display,
         display     = Display,
         lat         = Latitude,
         lon         = Longitude) %>%
  dplyr::filter(!is.na(display)) # remove rows that don't have point/shapefile
tail(display_list)


## count number of active and completed OHI+ countries ----
n_ohi_plus <- display_list %>%
  filter(ohi_plus == 'YES')

n_ohi_plus_active <- n_ohi_plus %>%
  filter(phase == 'active')

cat(sprintf('Total count of OHI+ assessments is %s!', dim(n_ohi_plus)[1]))
cat(sprintf('And %s are active, %s are completed OHI+ assessments.', 
            dim(n_ohi_plus_active)[1], 
            dim(n_ohi_plus)[1]- dim(n_ohi_plus_active)[1]))


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

## determine whether any points have been added:
old <- read.csv("assets/maps/regions_point.csv")
if(length(setdiff(display_pt$country, old$country))>0){
  warning('Countries with points have been added, will need to update the point map')
}


if (nrow(display_pt) + nrow(display_shp) != nrow(display_list)) {
  warning('please make sure all the countries to display have either shapefiles or lat/longs')
}
 write.csv(display_shp, "assets/maps/regions_shape.csv", row.names=FALSE)        
 write.csv(display_pt, "assets/maps/regions_point.csv", row.names=FALSE)        
         
         
         