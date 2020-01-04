# router_scripts
some scripts made for routers and capturing details and logging to a db. because graphs. 

## why? 

Get the signal stats or quality end of the day. 

## sources used

https://github.com/ishan-marikar/dialog-router-api <br>
https://github.com/babca/huawei-api

## grafana

I have added the grafana sql as well to log this to db. 

example: https://imgur.com/a/65Teg95

## cron
```
*/8 * * * * /bin/bash /dir/to/dialog-router-api/signalb315.sh
*/8 * * * * /bin/bash /dir/to/huawei-api/signalb2338.sh
```

## notes

You might want to have all the routers on same LAN. My B2338 is 10.50.0.253 and B315 is 10.50.0.254 as example. This also means that if you like could change default route and do speedtest-cli,iperf3 and dnsperftesting as well and log those as well to db. 

https://github.com/HapyM3al/dnspertesttomysql <br> 
https://github.com/HapyM3al/iperf3pythontomysql
