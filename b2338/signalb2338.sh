#!/bin/bash

php /dir/to/huawei-api/status_example.php | egrep 'rssi|sinr|rsrp|rsrq|band|data_tx|data_rx|rx_bit_rate|tx_bit_rate' | grep -o '[0-9]\+' | xargs  echo "`date +"%Y-%m-%d %T "`" | awk 'BEGIN {FS=" "};{print "insert into signaltest.b2338 (start_time,rx_bit_rate,tx_bit_rate,rssi,sinr,rsrp,rsrq,band,data_tx,data_rx) values  ('\''" $1 " "  $2 "'\'','\''" $3 "'\'','\''" $4 "'\'','\''" $5 "'\'','\''" $6 "'\'','\''" $7 "'\'','\''" $8 "'\'','\''" $9 "'\'','\''" $10 "'\'','\''" $11 "'\'');"}' > /dir/to/huawei-api/insertcmdb2338.sql

mysql -uroot -ppassword signaltest < /dir/to/huawei-api/insertcmdb2338.sql
