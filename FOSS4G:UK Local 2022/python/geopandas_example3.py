# pip3 install matplotlib
import geopandas as gpd
import matplotlib.pyplot as plt

names  = gpd.read_file(
	'/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv', 
	driver='CSV', 
	X_POSSIBLE_NAMES='GEOMETRY_X', 
	Y_POSSIBLE_NAMES='GEOMETRY_Y', 
	bbox=(287194,52684,298246,60343),
	include_fields=['NAME1'],
	)

names.crs="EPSG:27700"
names.to_crs(epsg=3857)
ax = names.plot()
plt.show()
