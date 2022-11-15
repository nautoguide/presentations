import geopandas as gpd

names  = gpd.read_file(
	'/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv', 
	driver='CSV', 
	X_POSSIBLE_NAMES='GEOMETRY_X', 
	Y_POSSIBLE_NAMES='GEOMETRY_Y', 
	bbox=(287194,52684,298246,60343)
	)

print(names.head(10))
