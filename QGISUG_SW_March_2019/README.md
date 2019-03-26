# Overview

The objective of this short project was to create a building level population forecast for 2025 using only open data. The process was as follows:-

- download ONS population data (postcode level)
- join this with OS Opennames to give postcodes with population and postcodes without
- use these to create Voronoi polygons which give us population areas
- create a building data set of residential buildings by clipping Openmap buildings layer with Openmap Important Buildings
- for each building work out its overlap into a voronoi area with population
  - if building overlaps by more than 70% give it all the population count
  - if not then split it according to ratio
- create the centroid of each building segment and add the population count to it

# Processing Steps

# Create a union point set

- clip our postcode points to ward of interest
- union all of our population and non-population points
- convert them to single points

# Make population areas

- create voronoi polygons (with a buffer)
- clip to ward
- select only those with population


# Project Population

- add ward projection to each polygon
- allocation percentage to polygon

# Buildings Processing

- clip buildings to ward
- select buildings that overlap populated postcode areas
- calculate building overlap
- filter to buildings with 50% or greater overlap (weakness)
- distribute population based on overlap
- output as building segment centroid


