### STEP 1: Update Google Spreadsheet 
*OHI_CountriesMaster* must be updated with the relevant information.

### STEP 2: regions_get_master_list.R 
This reads in the OHI_CountriesMaster Google document and saves the data into two csv files that reflect differences in how the data will be displayed (polygons vs points).

### STEP 3: AddPolys_to_basemap.R
Follow this general script to update the Basemap with new region polygons.

To redo the basemap, run createBaseMap.R

### STEP 4: createLeafletMap.R
The shapefile and point data are added in two separate steps.
