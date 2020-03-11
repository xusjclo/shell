#!/bin/bash
curdate=`date +%Y-%m-%d`
a=`curl -H "Content-Type:application/json" -d '@1.json' http://47.111.155.56/ua/login`
#token=`echo $a|awk -F , '{print $2}' |awk -F : '{print $2}' |awk -F \" '{print $2}'`
token="eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxNTgzODU2MzQ2NzEyIiwiaWF0IjoxNTgzODU2MzQ2LCJzdWIiOiJhcHB1c2VyIiwiaXNzIjoiWkhYUTE1Nzk0MjYwOTAxNDU5NyIsImV4cCI6MTg5OTIxNjM0Nn0.z9FIJrttsY2SxaV7yGmcKKiaeOqzvYy1TbI93hamM9g"

#导出区域数量
GetArea() {
curl  -o Area 'http://47.111.155.56/smcaiot-epidemicmanage/epidemicsituationdailygg/exportAreaStatistic' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh,en;q=0.9,ja;q=0.8,zh-TW;q=0.7,fr;q=0.6,zh-CN;q=0.5' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36' -H 'Accept: application/json, text/plain, */*' -H 'Connection: keep-alive' -H "token: $token" --compressed
}

#导出桂林和光谷明细
exportExcelWithArea() {
curl  -o exportExcelWithArea "http://47.111.155.56:20000/smcaiot-epidemicmanage/epidemicsituationdailygg/exportExcelWithArea?currentDay=$curdate" -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh,en;q=0.9,ja;q=0.8,zh-TW;q=0.7,fr;q=0.6,zh-CN;q=0.5' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36' -H 'Accept: application/json, text/plain, */*' -H 'Connection: keep-alive' -H "token: $token" --compressed
}
GetArea
#sleep 3
exportExcelWithArea
#sleep 30


#导出桂林和光谷明细
#curl -o exportExcelWithArea http://47.111.155.56:20000/smcaiot-epidemicmanage/epidemicsituationdailygg/exportExcelWithArea?currentDay=$curdate

#导出区域数量
#curl -o Area http://47.111.155.56/smcaiot-epidemicmanage/epidemicsituationdailygg/exportAreaStatistic
#sleep 30


