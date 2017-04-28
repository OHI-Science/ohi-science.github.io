### This script creates the leaflet map for the ohi-science.org/projects/ohi-assessments

### NOTE: The two things created by leaflet must be moved after creation
## allRegions_files folder goes to: /projects/ohi-assessments. BY HAND! (for now). But do each time. 
## allRegions.html         goes to: _includes/themes/OHI/maps

# For more information: http://zevross.com/blog/2014/04/11/using-r-to-quickly-create-an-interactive-online-map-using-the-leafletr-package/
# http://stackoverflow.com/questions/26435861/how-to-read-a-geojson-file-containing-feature-collections-to-leaflet-shiny-direc
# http://www.tuicode.com/article/5637dded499808840885af68

### Need to read in the shape files for each of these regions:
library(tidyverse)
library(sp)
library(rgdal)
library(raster)
# library(leafletR) # alternative method for visualization
library(leaflet)
library(htmlwidgets)
library(jsonlite)
library(RColorBrewer)
library(rgeos)

####################
# set directories
dir_M <- c('Windows' = '//mazu.nceas.ucsb.edu/ohi',
           'Darwin'  = '/Volumes/ohi',    ### connect (cmd-K) to smb://mazu/ohi
           'Linux'   = '/home/shares/ohi')[[ Sys.info()[['sysname']] ]]
if (Sys.info()[['sysname']] != 'Linux' & !file.exists(dir_M)){
  warning(sprintf("The Mazu directory dir_M set in src/R/common.R does not exist. Do you need to mount Mazu: %s?", dir_M))
}

####################
# uses leaflet and htmlwidgets to save html file <- 2 options for PC/Mac
region_poly <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions',
                       layer="allRegions")
# region_poly <- readOGR(dsn=file.path(dir_M, 'git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions'),
#                        layer="allRegions")


region_poly_data <- read.csv('assets/maps/regions_shape.csv')

## This is run in case there are polygons in the shapefile that are no longer included:
region_poly <- region_poly[region_poly@data$country %in% region_poly_data$country, ]

## Add color data
colors <- data.frame(phase = c("active", "completed"),
                     color= c('#0083A3', '#00ADDD'))
region_poly@data <- region_poly@data %>%
  left_join(region_poly_data, by="country") %>%
  left_join(colors, by="phase")

popup_poly <- paste0('<b>', region_poly@data$display, '</b>',
                 '<br/>', "status: ", region_poly@data$phase)

## The data we want to display as points:
points <- read.csv("assets/maps/regions_point.csv")
popup_points <- paste0('<b>', points$display, '</b>',
                     '<br/>', "status: ", points$phase) # use this for new line: , "<br/>")

## point ideas:
##https://sites.google.com/site/gmapsdevelopment/
icon_new <- makeIcon(
  iconUrl = "http://maps.google.com/mapfiles/ms/micons/blue-dot.png",
  iconWidth = 25, iconHeight = 27,
  iconAnchorX = 15, iconAnchorY =27)

m <- leaflet(width="100%", height="600px") %>%
  setView(-30, 30, 2) %>%
  addTiles(options=tileOptions(noWrap=TRUE)) %>%
  #      addTiles(options=tileOptions(minZoom=3, noWrap=TRUE)) %>%
  #addProviderTiles("OpenStreetMap.BlackAndWhite") %>%
  #   addTiles(options = tileOptions(noWrap = TRUE)) %>%
  #   fitBounds(-180, -70, 180, 80) %>%
  addPolygons(data = region_poly,
              #fillColor = myPalette(nrow(regionAll)),
              fillColor = region_poly@data$color,
              popup=popup_poly,
              #stroke=FALSE,
              color = "#A8A8A8",
              weight = 1,
              opacity = 0.5,
              fillOpacity = 0.4) %>%
  addMarkers(data=points, ~lon, ~lat, popup = ~as.character(popup_points), icon=icon_new)
saveWidget(m, file="allRegions.html", selfcontained=FALSE)

### move allRegions.html to the correct place in _includes subdirectory
unlink("_includes/themes/OHI/maps/allRegions.html", recursive=TRUE)
file.rename(from="allRegions.html", to="_includes/themes/OHI/maps/allRegions.html")
unlink("allRegions.html")


### move allRegions_files folder to the correct place in /projects/ohi-assessments
### although this seems overkill, the map won't display if these packages have been updated and there's a mismatch; see https://github.com/OHI-Science/issues/issues/625
unlink("projects/ohi-assessments/allRegions_files", recursive=TRUE) # delete old folder
warning('Now move `/allRegions_files` to `/projects/ohi-assessments/allRegions_files`!')
warning('Seriously, did you move `/allRegions_files` to `/projects/ohi-assessments/allRegions_files`!?')
# we should script this someday but actually a pain to loop through subdirectories and copy
