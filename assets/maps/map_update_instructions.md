### STEP 1: Update Google Spreadsheet 
*OHI_CountriesMaster* must be updated with the relevant information.

### STEP 2: regions_get_master_list.R 
This reads in the OHI_CountriesMaster Google document and saves the data into two csv files that reflect differences in how the data will be displayed (polygons vs points).

### STEP 3: createShpFile.R
If any of the countries being displayed using polygons have changed, it will be necessary to walk through this script and update the map that combines the polygons for all the regions.

NOTE: if you just need to add a polygon without changing any of the existing polygons then skip to "Adding new layers" section below (that way you don't have to go through the slow process of recreating the basemap).  And follow the general instructions.

### STEP 4: createLeafletMap.R
The shapefile and point data are added in two separate steps.
