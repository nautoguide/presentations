import pandas as pd

names  = pd.read_csv('/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv')
roads = names.query('LOCAL_TYPE == "Named Road"')
roads = roads[['ID', 'NAME1']]
print(roads.head(10))