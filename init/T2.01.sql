create table if not exists trips (
	bike_id real,
	checkout_time time,
	duration_minutes int, 
	end_station_id real,
	end_station_name VARCHAR (255),
	month real,
	start_station_id real,
	start_station_name VARCHAR (255),
	start_time timestamp,
	subscriber_type VARCHAR (255),
	trip_id real ,
	year real
);
create table if not exists  stations(
	latitude real,
	location VARCHAR (255),
	longitude real,
	name VARCHAR (255),
	station_id int,
	status VARCHAR (255)
);

COPY trips (bike_id,checkout_time,duration_minutes,end_station_id,end_station_name,month,start_station_id,start_station_name,start_time,subscriber_type,trip_id,year)
FROM '/docker-entrypoint-initdb.d/data/austin_bikeshare_trips.csv'
DELIMITER ','
CSV HEADER;

COPY stations (latitude,location,longitude,name,station_id,status)
FROM '/docker-entrypoint-initdb.d/data/austin_bikeshare_stations.csv'
DELIMITER ','
CSV HEADER;

