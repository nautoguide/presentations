#  2,973,900 opennames_all.csv

# Ten records

ogr2ogr -oo X_POSSIBLE_NAMES=GEOMETRY_X -oo Y_POSSIBLE_NAMES=GEOMETRY_Y \
-s_srs EPSG:27700 -t_srs EPSG:4326 \
-limit 10 \
-f GPKG output.gpkg opennames_all.csv

# Bounding box (Brixham 287194 52684 298246 60343)

ogr2ogr -oo X_POSSIBLE_NAMES=GEOMETRY_X -oo Y_POSSIBLE_NAMES=GEOMETRY_Y \
-s_srs EPSG:27700 -t_srs EPSG:4326 \
-spat 287194 52684 298246 60343 \
-f GPKG brixham_output.gpkg opennames_all.csv

# SQL 

ogr2ogr -sql "SELECT name1 AS road_name FROM opennames_all WHERE LOCAL_TYPE='Named Road'" \
-oo X_POSSIBLE_NAMES=GEOMETRY_X -oo Y_POSSIBLE_NAMES=GEOMETRY_Y \
-s_srs EPSG:27700 -t_srs EPSG:4326 \
-spat 287194 52684 298246 60343 \
-f GPKG brixham_roads_output.gpkg opennames_all.csv

ogr2ogr -sql "SELECT name1 AS road_name FROM opennames_all WHERE LOCAL_TYPE='Named Road' AND name1 like 'Higher%'" \
-oo X_POSSIBLE_NAMES=GEOMETRY_X -oo Y_POSSIBLE_NAMES=GEOMETRY_Y \
-s_srs EPSG:27700 -t_srs EPSG:4326 \
-spat 287194 52684 298246 60343 \
-f GPKG brixham_roads_higher_output.gpkg opennames_all.csv

ogr2ogr -sql "SELECT name1 AS road_name FROM opennames_all WHERE LOCAL_TYPE='Named Road' AND name1 like 'Higher%'" \
-oo X_POSSIBLE_NAMES=GEOMETRY_X -oo Y_POSSIBLE_NAMES=GEOMETRY_Y \
-s_srs EPSG:27700 -t_srs EPSG:4326 \
-spat 287194 52684 298246 60343 \
-lco GEOMETRY=AS_XY \
-f CSV brixham_roads_higher_output.csv opennames_all.csv

