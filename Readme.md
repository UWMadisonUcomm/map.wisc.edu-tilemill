## map.wisc.edu TileMill project

The TileMill project used to render the tile layer for [map.wisc.edu](http://map.wisc.edu)

To request a PostGIS data dump needed to set up the PostGIS database for this project, please
contact [map@uc.wisc.edu](mailto:map@uc.wisc.edu). The project uses PostgreSQL 9.1, and PostGIS 1.5, but should run on
newer versions as well.

### Setting up the PostGIS database connection

The project relies on a hostname being resolved in /etc/hosts (or equivalent in Windows)
and the Postgresql password being set in ~/.pgpass (or equivalent in Windows.)

The database must be named *uw_map* and the user must be named *uw_map*.

The database host is set to local.uw_map, which you can map to either localhost
or a db host in /etc/hosts.

**An entry to map local.uw_map to localhost would look like this:**

    127.0.0.1 local.uw_map

Make sure not to remove the entry mapping 127.0.0.1 to localhost.

The password for your database will need to be set in ~/.pgpass. This is
the password you have given the uw_map user, for the local.uw_map host.

**The ~/.pgpass line should look something like this:**

    local.uw_map:5432:*:uw_map:password_you_chose
