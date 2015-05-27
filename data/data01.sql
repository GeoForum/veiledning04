SELECT *,(date_time_utc::char(14))::text as "date" FROM ais_20130829 limit 10

SELECT to_char(now(), 'YYYY-MM-DD') as "date",now() as now,* FROM ais_20130829 limit 10


SELECT 
  to_char(now(), 'YYYY-MM-DD') as now_char, 
  now() as now,
  date_time_utc,
  to_timestamp(date_time_utc) as stamp,
  to_char(to_timestamp(date_time_utc), 'YYYY-MM-DD') stamp_char
FROM ais_20130829 
limit 10