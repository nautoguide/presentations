-- Simplification

ST_TRANSFORM(ST_SIMPLIFYPRESERVETOPOLOGY(ST_TRANSFORM(wkb_geometry,27700),5),4326)

--BBOX Search

SELECT * 
FROM my_data
WHERE wkb_geometry && 'BOX[-1.80426 51.54, 51.57068,-1.76 51.57]'::BOX2D

--Proximity

SELECT * 
FROM my_data
ORDER BY wkb_geometry <-> ST_GEOMFROMEWKT('SRID-4326;POINT(-1.1 54.2)') 
LIMIT 1

--Clustering

SELECT ST_Collect(SEARCH_CLUSTER._wkb_geometry) AS _wkb_geometry
FROM (
	SELECT 

	         S._wkb_geometry,
	         ST_ClusterDBSCAN(S._wkb_geometry, cluster_width, cluster_size) OVER (partition by S._attributes->>'category') AS c_id
	FROM my_data
) SEARCH_CLUSTER
GROUP BY c_id

--Vector Tiles

SELECT ST_AsMVTGeom(ST_TRANSFORM(wkb_geometry, 3857), bounds) AS geom
FROM my_data