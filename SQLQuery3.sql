/****** Script for SelectTopNRows command from SSMS  ******/
drop table [emp_details].[dbo].[combov2];

SELECT [ride_id]
      ,[rideable_type]
      ,convert(date,[started_at]) as [started_at]
      ,convert(date,[ended_at]) as [ended_at]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
      ,[member_casual]
  into [emp_details].[dbo].[combov2]
  FROM [emp_details].[dbo].[combo]