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

## read in the data (all the data needed to create a shapefile is in the csv)
points <- read.csv('assets/maps/regions_point.csv')
points <- dplyr::filter(points, !is.na(lat))

coordinates(points) <- ~lon + lat

writeOGR(points, dsn='assets/maps', layer= 'regions_point_shapefile', driver="ESRI Shapefile", overwrite=TRUE)
