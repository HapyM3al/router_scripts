# graphing with grafana.

SELECT
  UNIX_TIMESTAMP(start_time) as time_sec,
 rssi as rssi,
  sinr as sinr,
rsrq as rsrq,
rsrp as rsrp
FROM b2338
WHERE $__timeFilter(start_time)
ORDER BY start_time ASC
