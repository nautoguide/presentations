import geopandas as gpd

names  = gpd.read_file(
	'/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv', 
	driver='CSV', 
	X_POSSIBLE_NAMES='GEOMETRY_X', 
	Y_POSSIBLE_NAMES='GEOMETRY_Y', 
	bbox=(287194,52684,298246,60343),
	include_fields=['NAME1'],
	#where = "LOCAL_TYPE='Named Road' AND NAME1 like 'Higher%'"

	)

print(names.head(10))