### STEP 1: Update Google Spreadsheet 
*OHI_CountriesMaster* must be updated with the relevant information.

### STEP 2: regions_get_master_list.R 
This reads in the OHI_CountriesMaster Google document and saves the data into two csv files that reflect differences in how the data will be displayed (polygons vs points).

### STEP 3: createShpFile.R
If any of the countries being displayed using polygons have changed, it will be necessary to walk through this script and update the map that combines all the polygons.

