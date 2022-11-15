import pandas as pd

names  = pd.read_csv('/Volumes/Extreme Pro/mapping_data/opennames/opennames_all.csv')
print(names.head(10))
print(names.info())