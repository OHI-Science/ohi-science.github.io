### This is the script used to create the original basemap

## libraries
library(dplyr)
library(sp)
library(rgdal)
library(raster)
# library(leafletR) # alternative method for visualization
library(leaflet)
library(htmlwidgets)
library(jsonlite)
library(RColorBrewer)
library(rgeos)
library(sf)

source('../ohiprep/src/R/common.R')

## US Pacific Coast----
## Identifying the US West Coast: don't need to run this again
# map2 <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")
# US <- map2[map2@data$rgn_nam %in% c('United States'), ]
#  #locator(2)
#  USWC <- raster::crop(US, as(extent(-135, -112, 50, 30), "SpatialPolygons"))
# 
# USWC@data <- USWC@data %>%
#   dplyr::select(Region = sp_name) %>%
#   mutate(Region = "United States, Pacific Coast")

#writeOGR(USWC, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', layer= 'USWestCoast_gcs', driver="ESRI Shapefile", overwrite=TRUE)

USWC <- readOGR(dsn= file.path(dir_M, 'git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions'), layer= 'USWestCoast_gcs')
USWC@data <- dplyr::select(USWC@data, country = rgn_name) 
USWC@data$country = "United States - West Coast"

USWC <- spChFIDs(USWC, as.character(USWC@data$country))



## Several countries----
map1 <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")

map1 <- map1[map1@data$rgn_nam %in% c('Brazil', 'Colombia',
                                      'China', 'Canada',
                                      'Israel', 'Chile', 'Fiji'), ]
proj4string(map1) <- CRS(proj4string(USWC))

map1@data <- map1@data %>%
  dplyr::select(country=rgn_nam)

map1 <- spChFIDs(map1, as.character(map1@data$country))



#### Baltic (BHI)
bhi <- readOGR(dsn= file.path(dir_M, 'git-annex/clip-n-ship/bhi/spatial'), layer = 'rgn_offshore_gcs')

# ## combine subregions:
bhi <- gBuffer(bhi, width=0.05)
pid <- sapply(slot(bhi, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bhi), row.names=pid)
bhi <- SpatialPolygonsDataFrame(bhi, data=p.df)

## name the region to correspond to the master dataframe
bhi@data$country <- "Baltic Sea"
bhi@data <- bhi@data %>%
  dplyr::select(country) 

## this is done so the rbind is possible:
bhi <- spChFIDs(bhi, as.character(bhi@data$country))

#### British Columbia----
bci <- readOGR(dsn = file.path(dir_M, 'git-annex/clip-n-ship/ohibc/spatial'), layer = 'rgn_offshore_gcs')
bci <- gBuffer(bci, width=0.1)
pid <- sapply(slot(bci, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bci), row.names=pid)
bci <- SpatialPolygonsDataFrame(bci, data=p.df)
bci@data$country <- "Canada - British Columbia"


bci@data <- bci@data %>%
  dplyr::select(country) 

bci <- spChFIDs(bci, as.character(bci@data$country))

#### Ecuador - Gulf of Guayaquil ----

gye <- readOGR(dsn= file.path(dir_M, 'git-annex/clip-n-ship/gye/spatial'), layer = 'rgn_offshore_gcs')
 gye <- gBuffer(gye, width=0.1)
 pid <- sapply(slot(gye, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(gye), row.names=pid)
gye <- SpatialPolygonsDataFrame(gye, data=p.df)

 gye@data$country <- "Ecuador - Gulf of Guayaquil"
 
gye@data <- gye@data %>%
  dplyr::select(country) 


gye <- spChFIDs(gye, as.character(gye@data$country))


### Combine layers
regionAll <- rbind(map1, bhi, bci, USWC, gye)  

writeOGR(regionAll, dsn = file.path(dir_M, 'git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions'), 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)



