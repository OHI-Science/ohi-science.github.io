---
layout: page
title: "Create Regions"
description: "tips on creating reporting units"
category: setup
tags: [python, arcgis, gis, tutorial]
---
{% include JB/setup %}

The first step in a custom Ocean Health Index analysis is creating the reporting units for which you will summarize. For a country level analysis, this is most likely to be the states or provinces, i.e. the first administrative level below country.

Here we provide a little recipe for creating these in ArcGIS using the following data:
* **GADM** - the Global Administrative Areas ([gadm.org](http://gadm.org)) contain the geography up to 5 political levels for all countries globally. 
* **EEZ** - the Exclusive Economic Zones ([marineregions.org](http://marineregions.org)) describe the 200 nautical mile (nm) extent of all countries.
* **EEZ and land** - with inclusion of the land and EEZ ([marineregions.org](http://marineregions.org)), we can fill in any gaps between GADM and the EEZ.

## Issues

There are several technical issues in generating regions which need need to: 1) not overlap with one another; and 2) cover the entire extent of the country without gaps. Here is the raw data displayed for our example country of Malaysia.

![raw data: GADM and EEZ](/figs/create_regions/gadm.png)

The EEZ is in blue and the GADM is color coded by state. Notice finer subdivisions are included in the GADM. Now we just need to extend these subdivisions offshore to generate state-level waters. The typical [buffer](http://resources.arcgis.com/en/help/main/10.2/index.html#//000800000019000000) function in GIS, however, does not handle distinct overlapping regions.

![raw data: GADM and EEZ](/figs/create_regions/overlapping.png)

As you can see from this simple buffer result, the buffers extend into each other. We solve for this overlap issue by generating [Thiessen polygons](http://resources.arcgis.com/en/help/main/10.2/index.html#//00080000001m000000) from the points on the outer edge of the land, which then gets intersected with the dissolved buffer. This is akin to the [method](http://marineregions.org/eezmethodology.php) used to originally create the EEZ boundaries. The result in this case with multiple buffers (at 3, 12, 50 and 100 nm) is unique and non-overlapping by state.

![raw data: GADM and EEZ](/figs/create_regions/buffers.png)

Other issues become apparent if we zoom in. There is a clear mismatch in the land described by GADM versus assumed by the EEZ. We presume that the EEZ is authoritative and therefore need to correct for the land.

![raw data: GADM and EEZ](/figs/create_regions/issues.png)

By extending the GADM provinces out with these Thiessen polygons to the full extent of the EEZ and intersecting with the missing EEZ land, hitherto missing land can be attributed to a state.

![raw data: GADM and EEZ](/figs/create_regions/corrected.png)

Some manual editing may be required beyond this recipe, since certain islands are not likely to be intersected by states and should instead by assigned wholly to one state. If the given country spans the international dateline (-180&deg; W or 180&deg; E), then a more complex analysis using geodetic distance should first be applied to the points (eg using [geographiclib](http://code.env.duke.edu/projects/mget/ticket/549)) and probably a [Plate Carr&eacute;e](http://resources.arcgis.com/en/help/main/10.2/index.html#//003r0000003r000000) or other dateline spanning projection should be used. Finally, if the country's EEZ is extensive than this method could be replaced with a raster method ("raster is faster, but vector is corrector") using [Polygon to Raster](http://resources.arcgis.com/en/help/main/10.2/index.html#//001200000030000000) and [Euclidean Allocation](http://resources.arcgis.com/en/help/main/10.2/index.html#//009z0000001m000000) (alternate recipe forthcoming).

## Script Recipe

Here's a script which you can modify based on your local paths and desired buffer distances. It is recommended that each line be run sequentially in the [Python window of ArcMap](http://resources.arcgis.com/en/help/main/10.2/index.html#/What_is_the_Python_window/002100000017000000/) which will render the geographic outputs so you can visually inspect the process.

{% highlight python %}
# create_regions.py - generate non-overlapping regions extending
# administrative areas into the ocean within the exclusive economic
# zone by a given buffer.
#
# to run from the Windows command window:
#  cd E:\bbest\neptune_local_edit_src_toolbox_exercises_create_regions
#  C:\Python27\ArcGISx6410.2\python.exe create_regions.py

# modules
import arcpy, os
arcpy.SetLogHistory(True) # C:\Users\bbest\AppData\Roaming\ESRI\Desktop10.2\ArcToolbox\History

# paths
lwd      = r'E:\bbest\neptune_local_edit_src_toolbox_exercises_create_regions'   # local working directory
#gdb      = r'L:\src\toolbox\exercises\create_regions\scratch.gdb'               # scratch file geodatabase (NETWORK)
gdb      = lwd+r'\scratch.gdb'                                                   # scratch file geodatabase (LOCAL)
eez      = r'N:\stable\GL-VLIZ-EEZs_v7\data\eez_v7_gcs.shp'                      # Exclusive Economic Zones (http://marineregions.org)
eezland  = r'N:\stable\GL-VLIZ-EEZs_v7\data\EEZ_land_v1.shp'                     # EEZ plus land (http://marineregions.org)
gadm     = r'N:\stable\GL-GADM-AdminAreas_v2\data\gadm2.gdb\gadm2'               # Global Administrative Areas (http://gadm.org)
gshhs    = r'N:\stable\GL-NGDC-GSHHG\gshhg-shp-2.2.2\GSHHS_shp\f\GSHHS_f_L1.shp' # Global Self-consistent, Hierarchical, High-resolution Geography Database (http://www.ngdc.noaa.gov/mgg/shorelines/gshhs.html)

# variables
country      = 'Malaysia'
buffers      = '3;12;50;100'
buffer_units = 'NauticalMiles'
#bbox_buffer = '100 Kilometers'

# projections
sr_mol = arcpy.SpatialReference('Mollweide (world)') # projected Mollweide (54009)
sr_gcs = arcpy.SpatialReference('WGS 1984')          # geographic coordinate system WGS84 (4326)

# environment
if not arcpy.Exists(gdb): arcpy.CreateFileGDB_management(os.path.dirname(gdb), os.path.basename(gdb))
arcpy.env.workspace       = gdb
arcpy.env.overwriteOutput = True
arcpy.env.outputCoordinateSystem = sr_mol

# select
arcpy.Select_analysis(eez,     'eez_mol'    , '"Country" = \'%s\'' % country)
arcpy.Select_analysis(eezland, 'eezland', '"Country" = \'%s\'' % country)
arcpy.Select_analysis(gadm,    'gadm'   , '"NAME_0"  = \'%s\'' % country)

# get administrative land
arcpy.Erase_analysis('eezland', 'eez_mol', 'land_mol')
arcpy.Clip_analysis('gadm', 'land_mol', 'gadm_land')
arcpy.Dissolve_management('gadm_land', 'states', 'NAME_1')

# create theissen polygons used to split slivers
arcpy.Densify_edit("states", 'DISTANCE', '1 Kilometers')
arcpy.FeatureVerticesToPoints_management('states', 'states_pts', 'ALL')

# delete interior points
arcpy.Dissolve_management('states', 'states_dissolved')
arcpy.MakeFeatureLayer_management('states_pts', 'lyr_states_pts')
arcpy.SelectLayerByLocation_management('lyr_states_pts', 'WITHIN_CLEMENTINI', 'states_dissolved')
arcpy.DeleteFeatures_management('lyr_states_pts')

# generate thiessen polygons of gadm for intersecting with land slivers
arcpy.env.extent = 'eezland'
arcpy.CreateThiessenPolygons_analysis('states_pts', 'states_thiessen', 'ALL')
arcpy.Dissolve_management('states_thiessen', 'thiessen_mol', 'NAME_1')
arcpy.RepairGeometry_management('thiessen_mol')
    
# get slivers, which are land but not identified by gadm, intersect with thiessen so break at junctions
arcpy.Erase_analysis('land_mol', 'gadm_land', 'landnotgadm')
arcpy.Intersect_analysis(["landnotgadm", 'thiessen_mol'], 'slivers')
arcpy.Merge_management(['states', 'slivers'], 'states_slivers')
arcpy.Dissolve_management('states_slivers', 'states_mol', 'NAME_1')

# buffer
arcpy.MultipleRingBuffer_analysis('states_mol', 'buffers', buffers, buffer_units, 'distance', 'ALL', 'OUTSIDE_ONLY')
arcpy.Clip_analysis('buffers', 'eez_mol', 'buffers_eez')
arcpy.Intersect_analysis(['buffers_eez', 'thiessen_mol'], 'buffers_mol', 'NO_FID')

# cleanup: project *_mol to *_gcs, and delete the rest
for fc in sorted(arcpy.ListFeatureClasses()):
    if fc.endswith('_mol'):
        arcpy.Project_management(fc, fc.replace('_mol', '_gcs'), sr_gcs)
    else:
        arcpy.Delete_management(fc)
{% endhighlight %}

## Future Work
* Fold this script into a function as part of the ohi-arcgis and ohi-opengis modules.
* Create a global base layer extending the finest GADM subdivision and desktop functions to operate on this layer, which will greatly reduce the processing time (by removing the Create Thiessen Polygons step).
* Create a web service for extraction of any country and subdivision buffer offshore or inshore.
* Create a custom [Albers Equal Area](http://resources.arcgis.com/en/help/main/10.2/index.html#//003r0000001n000000) projection assigning the parallels to 1/6th of the EEZ extent to minimize distortion (a la [project_optimal_albers.py](http://code.env.duke.edu/projects/mget/attachment/ticket/231/project_optimal_albers.py)).
* generate [TopoJSON](https://github.com/mbostock/topojson) for display in the OHI Toolbox mapping interface which minimizes the storage size by removal of redundant vertices of polygon shared borders. (Bonus: [Github interactive map rendering](http://blog.thematicmapping.org/2013/06/converting-shapefiles-to-topojson.html).)