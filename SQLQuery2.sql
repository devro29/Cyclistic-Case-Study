Drop table emp_details..combo;

SELECT * into emp_details..combo 
FROM emp_details..[202004-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202005-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202006-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202008-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202009-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202010-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202011-divvy-tripdata]
/*UNION ALL
SELECT * FROM emp_details..[202102-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202201-divvy-tripdata]
UNION ALL
SELECT * FROM emp_details..[202202-divvy-tripdata]*/


select count(*) from emp_details..combo

Select top(100)* from emp_details..combo

select member_casual,COUNT(*) from emp_details..combo group by member_casual


select rideable_type,member_casual,COUNT(*) from emp_details..combo group by rideable_type,member_casual

select * from emp_details..combo where CONVERT(date,started_at) <> CONVERT(date,ended_at)

/*
UPDATE emp_details..combo
SET  start_station_id = geography::STPointFromText('POINT(' + CAST(start_lng AS smallint) + ' ' + 
                    CAST(start_lat AS smallint) + ')', 4326)
					*/

drop table emp_details..moth
select format([started_at],'yyyyMM') as date_1,ride_id , rideable_type,member_casual  into emp_details..moth from emp_details..combov2


select top(100)* from emp_details..moth

select date_1,rideable_type, count(*)  from emp_details..moth group by date_1,rideable_type order by date_1

select date_1,member_casual , count(*)  from emp_details..moth group by date_1,member_casual order by date_1




