### STEP 1: Update Google Spreadsheet 
*OHI_CountriesMaster* must be updated with the relevant information.

### STEP 2: regions_get_master_list.R 
This reads in the OHI_CountriesMaster Google document and saves the data into two csv files that reflect differences in how the data will be displayed (polygons vs points).

### STEP 3: AddPolys_to_basemap.R
Follow this general script to update the Basemap with new region polygons. This does not need to be run if there are no updates to the polygon features on the map.

To redo the basemap, run createBaseMap.R

### STEP 4: createLeafletMap.R
The shapefile and point data are added in two separate steps.

Two files are created when this script is run: allRegions.html and a folder called allRegions_files

The allRegions_files is currently deleted.  However, if there are changes made to how the leaflet map is displayed 
(e.g., different centering or size) then this must be moved to /projects
(I'm not sure if additional changes need to be made to these files for the map to display properly)
