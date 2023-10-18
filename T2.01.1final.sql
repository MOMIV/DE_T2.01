with sample_start as (
	select station_id, start_station_name,
	count(start_station_name) as count_start,
	round (avg(duration_minutes), 2) as avg_start,
	date_trunc('year', start_time) as year_st
	FROM trips
	join stations on trips.start_station_name=stations.name
	where stations.status='active'
	GROUP by  year_st, stations.station_id, start_station_name
	ORDER by  year_st, stations.station_id, start_station_name
), sample_end as (
	select station_id, end_station_name,
	count(end_station_name) as count_end,
	round (avg(duration_minutes), 2) as avg_end,
	date_trunc('year', start_time) as year_en
	FROM trips
	join stations on trips.end_station_name=stations.name
	where stations.status='active'
	GROUP by  year_en, stations.station_id, end_station_name
	ORDER by  year_en, stations.station_id, end_station_name
)
select sample_start.station_id, 
count_start,
count_end,
count_start+count_end as amnt,
avg_start,
avg_end,
year_st 
FROM sample_start
join sample_end on sample_start.station_id=sample_end.station_id and year_st=year_en
GROUP by year_st , sample_start.station_id, sample_start.count_start, sample_end.count_end, sample_start.avg_start, sample_end.avg_end
ORDER by  year_st ,avg_start desc