CPH_BOUNDS=11.894 55.950 13.147 55.491
DB_NAME?=cphbikes
DB_HOST?=localhost
DB_USER?=cphbikes

data: denmark.osm.pbf

denmark.osm.pbf: europe-latest.osm.pbf
	# TODO extract these bounds out so that coastline can be similarly
	# processed
	osmosis --read-pbf europe-latest.osm.pbf --bb left=7.64 bottom=54.33 right=13.37 top=57.98 --write-pbf denmark.osm.pbf

europe-latest.osm.pbf:
	curl -sLO http://download.geofabrik.de/europe-latest.osm.pbf

copenhagen.osm.pbf:
	curl -sLO http://osm-extracted-metros.s3.amazonaws.com/copenhagen.osm.pbf

osm-copenhagen: copenhagen.osm.pbf
	osm2pgsql -d ${DB_NAME} -U ${DB_USER} -H ${DB_HOST} -c -C8000 --number-processes=4 -s -S cphbikes.style -p copenhagen copenhagen.osm.pbf
	psql -d ${DB_NAME} -U ${DB_USER} -h ${DB_HOST} -f highroad/high_road_views-setup.pgsql
	psql -d ${DB_NAME} -U ${DB_USER} -h ${DB_HOST} -c "create index copenhagen_point_amenity_idx on copenhagen_point(amenity);"
	psql -d ${DB_NAME} -U ${DB_USER} -h ${DB_HOST} -c "create index copenhagen_polygon_amenity_idx on copenhagen_polygon(amenity);"

osm-denmark: denmark.osm.pbf
	osm2pgsql -d ${DB_NAME} -U ${DB_USER} -H ${DB_HOST} -c -C8000 --number-processes=4 -s -S cphbikes.style denmark.osm.pbf

coastline-copenhagen: coastline-copenhagen.shp
	shp2pgsql -d -s 4326:900913 -I coastline-copenhagen.shp copenhagen_coastline | pv | psql -q -h ${DB_HOST} -d ${DB_NAME} -U ${DB_USER}

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
