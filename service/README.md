#Service

Service allows you to maintain a copy of OSM and build a hierachical tree of administrative boundaries from it.

First start downloading the lastest planet snapshot from http://planet.osm.org/pbf/planet-latest.osm.pbf. Will take a while - it's around 30GB.

You'll need to install the following packages:

* postresql
* postgis
* java
* osmosis
* ant
* git

Database for OSM

    createdb *name*
    psql -d *name* -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;'
    psql -d *name* -f /path/to/pgsnapshot_schema_0.6.sql
    psql -d *name* -f /path/to/pgsnapshot_schema_0.6_action.sql
    psql -d *name* -f /path/to/pgsnapshot_schema_0.6_bbox.sql
    psql -d *name* -f /path/to/pgsnapshot_schema_0.6_linestring.sql
    psql -d *name* -f /path/to/pgsnapshot_schema_0.6.sql

Populate Database

Once the planet file has downloaded you can populate your database - `osmosis --read-pbf file=/path/to/planet-latest.osm.pbf --tf accept-relations boundary=administrative --used-way --used-node --write-pgsql database=*name* user=*name*`

This will take a while.

Build Administrative Boundaries

This currently depends on the osmgadm[https://github.com/bussed/osmgadm] project.

Clone osmgdam with `git clone https://github.com/bussed/osmgadm.git`.

We've already covered some of osmgadm's installation.

cd into src and run ant.

Update config.cfg.

Database for osmgadm

    psql -d *name* -f sql/inittreeworld.sql
    psql -d *name* -f sql/createtree.sql
    psql -d *name* -f sql/iso3166-1.sql
    psql -d *name* -f sql/iso3166-2.sql

You can now generate the hierarchy with `scripts/generatepolygons.sh`.
