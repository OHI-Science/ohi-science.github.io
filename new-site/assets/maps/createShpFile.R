### This is the script used to gather region shapefiles to describe the local
### OHI+ analyses

### NOTE: I need to clip out the bci portion of the canada map...so it doesn't get two overlapping polygons


### Need to read in the shape files for each of these regions:
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

## Hawaii----
map2 <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data', layer= 'sp_gcs')
map2 <- map2[map2@data$sp_type == "eez", ]
Hawaii <- map2[map2@data$sp_name %in% c('Hawaii'), ]

Hawaii@data <- Hawaii@data %>%
  dplyr::select(Region = sp_name) %>%
  mutate(Region = "United States, Hawaii")

Hawaii <- spChFIDs(Hawaii, Hawaii@data$Region)

writeOGR(Hawaii, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="Hawaii", driver="ESRI Shapefile")

Hawaii <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
                  layer="Hawaii")
Hawaii <- spChFIDs(Hawaii, as.character(Hawaii@data$Region))

## US Pacific Coast----
## Identifying the US West Coast: don't need to run this again
US <- map2[map2@data$sp_name %in% c('United States'), ]
#locator(2)
USWC <- crop(US, extent(-135, -112, 50, 30))

USWC@data <- USWC@data %>%
  dplyr::select(Region = sp_name) %>%
  mutate(Region = "United States, Pacific Coast")
writeOGR(USWC, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data', layer= 'USWestCoast_gcs', driver="ESRI Shapefile", overwrite=TRUE)

USWC <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data', layer= 'USWestCoast_gcs')

USWC <- spChFIDs(USWC, USWC@data$Region)


## Several countries----
map1 <- readOGR('../ohiprep/globalprep/spatial/downres', layer="rgn_eez_gcs_low_res")

map1 <- map1[map1@data$rgn_nam %in% c('Brazil', 'Canada', 'British Virgin Islands', 'Ecuador', 'Colombia',
                                      'China', 'Mexico', 'Peru', 'South Korea', 'Japan',
                                      'Israel', 'Panama', 'Spain', 'Chile', 'Fiji'), ]
proj4string(map1) <- CRS(proj4string(Hawaii))

#map1@data$country <- 1:nrow(map1@data) # don't think I need this anymore.
map1@data <- map1@data %>%
  dplyr::select(Region=rgn_nam)

map1 <- spChFIDs(map1, as.character(map1@data$Region))

#### Baltic (BHI)
library(rgeos)
bhi <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/bhi/spatial', layer = 'rgn_offshore_gcs')
bhi <- gBuffer(bhi, width=0.05)
pid <- sapply(slot(bhi, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bhi), row.names=pid)
bhi <- SpatialPolygonsDataFrame(bhi, data=p.df)
bhi@data$Region <- "Baltic"

bhi@data <- bhi@data %>%
  dplyr::select(Region) 

plot(bhi)

# doesn't seem to work....
# writeOGR(bhi, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
#          layer="bhi_buffer", driver="ESRI Shapefile", overwrite_layer = TRUE)

bhi <- spChFIDs(bhi, as.character(bhi@data$Region))

#### British Columbia: don't include for now...wait for Casey to tell me the correct map
bci <- readOGR(dsn='/var/data/ohi/git-annex/clip-n-ship/ohibc/spatial', layer = 'rgn_offshore_gcs')
bci <- gBuffer(bci, width=0.1)
pid <- sapply(slot(bci, 'polygons'), function(x) slot(x, "ID"))
p.df <- data.frame(ID=1:length(bci), row.names=pid)
bci <- SpatialPolygonsDataFrame(bci, data=p.df)
bci@data$Region <- "British Columbia"

bci@data <- bci@data %>%
  dplyr::select(Region) 

# writeOGR(bci, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
#          layer="bci_buffer", driver="ESRI Shapefile")


bci <- spChFIDs(bci, as.character(bci@data$Region))


#### Arctic

### These data got messed up in CRS transformation:
# arctic <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
#                   layer="pan_arctic_gcs")
# 
# arctic <- gBuffer(arctic, width=0.1)
# pid <- sapply(slot(arctic, 'polygons'), function(x) slot(x, "ID"))
# p.df <- data.frame(ID=1:length(arctic), row.names=pid)
# arctic <- SpatialPolygonsDataFrame(arctic, data=p.df)
# arctic@data$Region <- "Arctic"
# 
# arctic@data <- arctic@data %>%
#   dplyr::select(Region) 
# 
# writeOGR(arctic, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
#          layer="pan_arctic_gcs_buffer", driver= "ESRI Shapefile", overwrite=TRUE)
# arctic <- readOGR(arctic, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
#          layer="pan_arctic_gcs_buffer")

### Combine layers
library(maptools)
regionAll <- rbind(map1, bhi, bci, Hawaii, USWC)  

writeOGR(regionAll, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)
#write.csv(regionAll@data, 'global2015/geojson/regions.csv', row.names=FALSE)

### Adding new layers
all <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
               layer="allRegions")
regionAll <- rbind(all, ?????)
writeOGR(regionAll, dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
         layer="allRegions", driver = "ESRI Shapefile", overwrite=TRUE)
write.csv(regionAll@data, 'global2015/geojson/regions.csv', row.names=FALSE)


