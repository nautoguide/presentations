import geopandas as gpd
import os
import contextily as ctx
import matplotlib.pyplot as plt

os.environ['PROJ_NETWORK'] = 'OFF'

names  = gpd.read_file(
	'/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv', 
	driver='CSV', 
	X_POSSIBLE_NAMES='GEOMETRY_X', 
	Y_POSSIBLE_NAMES='GEOMETRY_Y', 
	bbox=(287194,52684,298246,60343),
	include_fields=['NAME1']
	)



names = names.set_crs(epsg=27700)
names = names.to_crs(epsg=3857)


ax = names.plot()
ctx.add_basemap(ax, source=ctx.providers.OpenStreetMap.Mapnik, crs='epsg:3857')

plt.show()
