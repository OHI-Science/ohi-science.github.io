### STEP 1: Update Google Spreadsheet 
*[OHI_CountriesMaster](https://docs.google.com/spreadsheets/d/1Xh8-36cLCEa_bppqLJu-nukVgPDT8xVEd9nxEaPYKKg/edit#gid=2018368498)* must be updated with the relevant information.

### STEP 2: regions_get_master_list.R 
This reads in the OHI_CountriesMaster Google document and saves the data into two csv files that reflect differences in how the data will be displayed (polygons vs points).

### STEP 3: AddPolys_to_basemap.R
Follow this general script to update the Basemap with new region polygons. This does not need to be run if there are no updates to the polygon features on the map.

To redo the basemap, run createBaseMap.R

### STEP 4: createLeafletMap.R
The shapefile and point data are added in two separate steps.

Two things are created when this script is run, and need to be moved to the correct places. 

- allRegions.html         -> move to `_includes/themes/OHI/maps` (scripted)
- allRegions_files folder -> move to `/projects/ohi-assessments` (BY HAND!) (do this each time; if libraries get out of sync then the map will not display). 

