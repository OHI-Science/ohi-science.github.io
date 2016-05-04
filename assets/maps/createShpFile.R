### This is the script used to gather region shapefiles to describe the local
### OHI+ analyses

## NOTE: if you just need to add a polygon without changing any of the existing polygons
## then skip to "Adding new layers" section below (that way you don't have to go through
## the slow process of recreating the basemap.)

### NOTE: I need to clip out the bci portion of the canada map...
## so it doesn't get two overlapping polygons

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

source('../ohiprep/src/R/common.R')

## Several countries----
map1 <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")

map1 <- map1[map1@data$rgn_nam %in% c('Brazil', 'Colombia',
                                      'China', 'Canada',
                                      'Israel', 'Chile', 'Fiji'), ]
proj4string(map1) <- CRS(proj4string(USWC))

map1@data <- map1@data %>%
  dplyr::select(country=rgn_nam)

map1 <- spChFIDs(map1, as.character(map1@data$country))


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

USWC <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', layer= 'USWestCoast_gcs')
USWC@data <- dplyr::select(USWC@data, country = rgn_name) 
USWC@data$country = "United States - West Coast"

USWC <- spChFIDs(USWC, as.character(USWC@data$country))



#### Baltic (BHI)
bhi <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/bhi/spatial', layer = 'rgn_offshore_gcs')

# ## combine subregions:
bhi <- gBuffer(bhi, width=0.05)
pid <- sapply(slot(bhi, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bhi), row.names=pid)
bhi <- SpatialPolygonsDataFrame(bhi, data=p.df)
#bhi <- gUnionCascaded(bhi)

## name the region to correspond to the master dataframe
bhi@data$country <- "Baltic Sea"
bhi@data <- bhi@data %>%
  dplyr::select(country) 

## this is done so the rbind is possible:
bhi <- spChFIDs(bhi, as.character(bhi@data$country))

#### British Columbia----
bci <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/ohibc/spatial', layer = 'rgn_offshore_gcs')
bci <- gBuffer(bci, width=0.1)
pid <- sapply(slot(bci, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bci), row.names=pid)
bci <- SpatialPolygonsDataFrame(bci, data=p.df)
bci@data$country <- "Canada - British Columbia"


bci@data <- bci@data %>%
  dplyr::select(country) 

bci <- spChFIDs(bci, as.character(bci@data$country))

#### Ecuador - Gulf of Guayaquil ----

gye <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/gye/spatial', layer = 'rgn_offshore_gcs')
 gye <- gBuffer(gye, width=0.1)
 pid <- sapply(slot(gye, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(gye), row.names=pid)
gye <- SpatialPolygonsDataFrame(gye, data=p.df)

 gye@data$country <- "Ecuador - Gulf of Guayaquil"
 
gye@data <- gye@data %>%
  dplyr::select(country) 


gye <- spChFIDs(gye, as.character(gye@data$country))


### Combine layers
library(maptools)
regionAll <- rbind(map1, bhi, bci, USWC, gye)  

writeOGR(regionAll, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)
#write.csv(regionAll@data, 'global2015/geojson/regions.csv', row.names=FALSE)


#######################################
### Adding new layers----
#######################################
all <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
               layer="allRegions")

## You will need to follow these general instructions:

## OPTION 1: If your region matches the eez boundary (or multiple eez boundaries)
##           The easiest option is to use these data 

map1 <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")

your_new_region <- map1[map1@data$rgn_nam %in% c('Brazil'), ]

# These data need to be converted to a lat/long coordinate reference system (this may be the case with other maps as well):
proj4string(your_new_region) <- CRS(proj4string(all))

## OPTION 2: If there is an official OHI+ spatial file (this will probably typically be the case): 

## you will need to combine subregions into one general region:
your_new_region <- gBuffer(your_new_region, width=0.05)
pid <- sapply(slot(your_new_region, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(your_new_region), row.names=pid)
your_new_region <- SpatialPolygonsDataFrame(your_new_region, data=p.df)

## Then provide a name to the polygon that exactly matches the name in the master Google spreadsheet:
your_new_region@data$Region <- "Baltic Sea"
your_new_region@data <- your_new_region@data %>%
  dplyr::select(Region) 

#### OPTION 1 and 2
## the following step must be done so is done so the rbind is possible:
your_new_region <- spChFIDs(your_new_region, as.character(your_new_region@data$Region))

## merge the polygons into one file
regionAll <- rbind(all, your_new_region)
writeOGR(regionAll, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)


