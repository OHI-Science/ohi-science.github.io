### This creates the leaflet map for the website using the shapefile created in createShpFile.R

### NOTE: The two files created by leaflet must be moved after creation
## allRegions_files folder goes to: /projects
### allRegions.html goes to: _includes/themes/OHI/maps

# For more information: http://zevross.com/blog/2014/04/11/using-r-to-quickly-create-an-interactive-online-map-using-the-leafletr-package/
# http://stackoverflow.com/questions/26435861/how-to-read-a-geojson-file-containing-feature-collections-to-leaflet-shiny-direc
# http://www.tuicode.com/article/5637dded499808840885af68

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

####################
# uses leaflet and htmlwidgets to save html file
regionAll <- readOGR(dsn='/var/data/ohi/git-annex/Global/NCEAS-Regions_v2014/data/website_OHIplus_regions', 
                     layer="allRegions")
regions <- read.csv('assets/maps/regions.csv')

## Not including Arctic, file is messed up (fix later):
regionAll <- regionAll[regionAll@data$Region %in% regions$Region, ]

## Add color data
colors <- data.frame(Status = c("active", "completed"), 
                     color= c('#0083A3', '#00ADDD'))
regionAll@data <- regionAll@data %>%
  left_join(regions, by="Region") %>%
  left_join(colors, by="Status")

popup1 <- paste0('<b>', regionAll@data$Display, '</b>',
                 '<br/>', "status: ", regionAll@data$Status) # use this for new line: , "<br/>")
# myPalette <- colorRampPalette(brewer.pal(11, "Spectral"))
# myPalette <- colorRampPalette(c("#9E0142", "#D53E4F", "#F46D43", "#FDAE61", "#3288BD", "#5E4FA2"))
# myPalette <- topo.colors(nrow(regionAll@data), alpha=NULL)

m <- leaflet(width="100%", height="600px") %>%
  setView(-30, 30, 2) %>%
  addTiles(options=tileOptions(noWrap=TRUE)) %>%
  #      addTiles(options=tileOptions(minZoom=3, noWrap=TRUE)) %>%
  #addProviderTiles("OpenStreetMap.BlackAndWhite") %>%
  #   addTiles(options = tileOptions(noWrap = TRUE)) %>%  
  #   fitBounds(-180, -70, 180, 80) %>%
  addPolygons(data = regionAll, 
              #fillColor = myPalette(nrow(regionAll)), 
              fillColor = regionAll@data$color,
              popup=popup1, 
              #stroke=FALSE,
              color = "#A8A8A8",
              weight = 1,
              opacity = 0.5,
              fillOpacity = 0.4)
saveWidget(m, file="allRegions.html", selfcontained=FALSE)

