### Use this script to add new region polygons to the basemap

## NOTE: the following functions may be more straightforward (but were causing errors in last version):
## unionSpatialPolygons or gUnionCascaded for merging regions
## (see http://gis.stackexchange.com/questions/63577/joining-polygons-in-r)
## and gSimplify and SpatialPolygonsDataFrame to simplify topology (otherwise, the images tend to be very slow)
## new_rgn_data <- new_rgn@data   # save the dataframe
## new_rgn <- gSimplify(new_rgn, tol=0.01, topologyPreserve=TRUE)
## new_rgn <- SpatialPolygonsDataFrame(new_rgn, data=new_rgn_data)
## (see http://zevross.com/blog/2014/04/11/using-r-to-quickly-create-an-interactive-online-map-using-the-leafletr-package/)

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

# read in the basemap
bm <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
               layer="allRegions")

################################################################################
## OPTION 1: If your region matches the eez boundary (or multiple eez boundaries)
##           The easiest option is to select the eez from our master shapefile 
#################################################################################

all_rgns <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")

new_rgn <- all_rgns[all_rgns@data$rgn_nam %in% c('Brazil'), ]

new_rgn <- spTransform(new_rgn, CRS("+init=epsg:4326"))

### making dataframe consistent with basemap 
new_rgn@data <- new_rgn@data %>%
  dplyr::select(country=rgn_nam)

# the country name should exactly match what is in the Google spreadsheet
new_rgn@data$country <- "country name in Google spreadsheet"

## the following step must be done so is done so the rbind is possible:
new_rgn <- spChFIDs(new_rgn, as.character(new_rgn@data$country))

#######################################################################
## OPTION 2: If there is an official OHI+ spatial file:
## (note: coordinate reference system must be in lat/long WGS84 
## (if not use spTransform function shown above)
#######################################################################

## read in spatial shapefile (here's an example!):
new_rgn <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/bhi/spatial', layer = 'rgn_offshore_gcs')

## you will need to combine the subregions into one general region:
new_rgn <- gBuffer(new_rgn, width=0.05)
pid <- sapply(slot(new_rgn, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(new_rgn), row.names=pid)
new_rgn <- SpatialPolygonsDataFrame(new_rgn, data=p.df)

## Then provide a name to the polygon that exactly matches the name in the master Google spreadsheet:
new_rgn@data$country <- "country name in Google spreadsheet"
new_rgn@data <- new_rgn@data %>%
  dplyr::select(country)

## this is done so the rbind is possible:
bhi <- spChFIDs(bhi, as.character(bhi@data$country))

## the following step must be done so is done so the rbind is possible:
new_rgn <- spChFIDs(new_rgn, as.character(new_rgn@data$country))

##################################################
#### merge the regions and save the new shapefile
##################################################

## merge the polygons into one file
regionAll <- rbind(bm, new_rgn)

writeOGR(regionAll, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)


