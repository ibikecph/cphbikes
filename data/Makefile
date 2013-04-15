CPH_BOUNDS=11.894 55.950 13.147 55.491

data: denmark.osm.pbf

denmark.osm.pbf: europe-latest.osm.pbf
	osmosis --read-pbf europe-latest.osm.pbf --bb left=7.64 bottom=54.33 right=13.37 top=57.98 --write-pbf denmark.osm.pbf

europe-latest.osm.pbf:
	curl -sLO http://download.geofabrik.de/europe-latest.osm.pbf

copenhagen.osm.pbf:
	curl -sLO http://osm-extracted-metros.s3.amazonaws.com/copenhagen.osm.pbf

# clip the coastline around Copenhagen
coastline-copenhagen.shp: coastline.zip
	unzip -n coastline.zip
	rm -f coastline-copenhagen.*
	ogr2ogr -clipsrc ${CPH_BOUNDS} coastline-copenhagen.shp land-polygons-complete-4326/land_polygons.shp
	rm -rf land-polygons-complete-4326/

# fetch land polygons from http://openstreetmapdata.com/data/land-polygons
coastline.zip:
	curl -sLo coastline.zip http://data.openstreetmapdata.com/land-polygons-complete-4326.zip

clean:
	rm coastline-copenhagen.*
	rm denmark.osm.pbf
