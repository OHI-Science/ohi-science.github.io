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

## filter point data to display
display_pt <-  display_list %>%
  filter(map_display == 'point')

if (nrow(display_pt) + nrow(display_shp) != nrow(display_list)) {
  warning('please make sure all the countries to display have either shapefiles or lat/longs')
}
         

         
         
         