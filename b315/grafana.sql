# graphing the signal on B315 grafana sql. 

SELECT
  UNIX_TIMESTAMP(start_time) as time_sec,
  rssi
FROM b315
WHERE $__timeFilter(start_time)
ORDER BY start_time ASC

SELECT
  UNIX_TIMESTAMP(start_time) as time_sec,
  rsrq
FROM b315
WHERE $__timeFilter(start_time)
ORDER BY start_time ASC

SELECT
  UNIX_TIMESTAMP(start_time) as time_sec,
  rsrp
FROM b315
WHERE $__timeFilter(start_time)
ORDER BY start_time ASC

SELECT
  UNIX_TIMESTAMP(start_time) as time_sec,
  sinr
FROM b315
WHERE $__timeFilter(start_time)
ORDER BY start_time ASC
