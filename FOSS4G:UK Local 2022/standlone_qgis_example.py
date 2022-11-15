# /Applications/Qgis.app/Contents/MacOS/bin/python3 qgis_app.py
import os
import sys
sys.path.append('/Applications/QGis.app/Contents/Resources/python/')
#sys.path.append('/Applications/QGis.app/Contents/Resources/python/plugins') # if you want to use the processing module, for example
from qgis.core import *
from qgis.gui import *

qgs = QgsApplication([],True)
QgsApplication.setPrefixPath('/Applications/QGis.app/Contents/MacOS', True)


qgs.initQgis()

canvas = QgsMapCanvas()
canvas.setWindowTitle("QGIS Standalone Application")
crs = QgsCoordinateReferenceSystem(3857)
project = QgsProject.instance()
canvas.setDestinationCrs(crs)
canvas.show()
uri = 'type=xyz&url=https://a.tile.openstreetmap.org/%7Bz%7D/%7Bx%7D/%7By%7D.png&zmax=19&zmin=0&crs=EPSG3857'
basemap_layer = QgsRasterLayer(uri, "basemap", "wms")


if basemap_layer.isValid():
    project.addMapLayer(basemap_layer)
else:
    print("XYZ layer failed to load!")
    exit()


canvas.setLayers([basemap_layer])
canvas.zoomToFullExtent()


exitcode = qgs.exec_()
qgs.exitQgis()

