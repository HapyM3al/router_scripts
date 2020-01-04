#!/bin/bash

node /home/tianh/routertesting/dialog-router-api/getSignalB315.js | grep -o '[0-9]\+' | xargs  echo "`date +"%Y-%m-%d %T "`" | awk 'BEGIN {FS=" "};{print "insert into signaltest.b315 (start_time, rsrq, rsrp, rssi,sinr,mode,cell_id) values  ('\''" $1 " "  $2 "'\'','\''" $3 "'\'','\''" $4 "'\'','\''" $5 "'\'','\''" $6 "'\'','\''" $7 "'\'','\''" $8 "'\'');"}' > /dir/to/dialog-router-api/insertb315.sql

mysql -uroot -ppassword signaltest < /dir/to/dialog-router-api/insertb315.sql
