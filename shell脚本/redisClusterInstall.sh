#!/bin/bash
#Author: xusj
#Date: 2020/11/3
curDir=$(cd `dirname $0`;pwd)
instDir="/ops/inst"
appDir="/ops/app"
redisDir="/ops/app/redis"
redisTempConf=$redisDir/redis.conf
clusterDir="/ops/app/redis/redis-cluster"
redisPass="smcaiot_redis_pass"
redisCli=$redisDir/src/redis-cli
redisServer=$redisDir/src/redis-server

initDir()
{
if [ ! -d ${instDir} ];then
    mkdir -p ${instDir}
fi

if [ ! -d ${appDir} ];then
    mkdir -p ${appDir}
fi
}

install_make()
{
wget -P /ops/inst/ ftp://59.173.19.66:5021/devops/inst/redis/redis-5.0.5.tar.gz && tar -xf /ops/inst/redis-5.0.5.tar.gz -C /ops/app/
ln -s $appDir/redis-5.0.5  $redisDir
cd $redisDir
make && make install
if [ $? -ne 0 ];then
    echo "----------------------------------------------------"
    echo "redis5 install make执行失败，请检查基础依赖"
    echo "----------------------------------------------------"
	exit 1
fi

if [ ! -d ${clusterDir} ];then
    mkdir -p ${clusterDir}
fi
}

redis_node_config_install()
{
case $nodenumber in
	1)
	for nodeport in 7000 7001; do
	    mkdir -p ${clusterDir}/$nodeport
            sed "s|protected-mode yes|protected-mode no|g" $redisTempConf > ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|bind 127.0.0.1|bind 0.0.0.0|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|daemonize no|daemonize yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|dir ./|dir "${clusterDir}"/"$nodeport"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# requirepass foobared|requirepass "$redisPass"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|appendonly no|appendonly yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-config-file nodes-6379.conf|cluster-config-file nodes-"${nodeport}".conf|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|port 6379|port "${nodeport}"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-enabled yes|cluster-enabled yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|pidfile /var/run/redis_6379.pid|pidfile ${clusterDir}/$nodeport/redis_${nodeport}.pid|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
		
        	$redisServer ${clusterDir}/$nodeport/redis${nodeport}.conf
		if [ $? -eq 0 ];then
		    echo -e "\033[46;30m 启动redis-server $nodeport成功  \033[0m"
		fi
	done
	;;
	2)
	for nodeport in 7002 7003; do
	    mkdir -p ${clusterDir}/$nodeport
            sed "s|protected-mode yes|protected-mode no|g" $redisTempConf > ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|bind 127.0.0.1|bind 0.0.0.0|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|daemonize no|daemonize yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|dir ./|dir "${clusterDir}"/"$nodeport"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# requirepass foobared|requirepass "$redisPass"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|appendonly no|appendonly yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-config-file nodes-6379.conf|cluster-config-file nodes-"${nodeport}".conf|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|port 6379|port "${nodeport}"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-enabled yes|cluster-enabled yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|pidfile /var/run/redis_6379.pid|pidfile ${clusterDir}/$nodeport/redis_${nodeport}.pid|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
		
		$redisServer ${clusterDir}/$nodeport/redis${nodeport}.conf
		if [ $? -eq 0 ];then
		    echo -e "\033[46;30m 启动redis-server $nodeport成功  \033[0m"
		fi
	done
	;;
	3)
	for nodeport in 7004 7005; do
	    mkdir -p ${clusterDir}/$nodeport
            sed "s|protected-mode yes|protected-mode no|g" $redisTempConf > ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|bind 127.0.0.1|bind 0.0.0.0|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|daemonize no|daemonize yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|dir ./|dir "${clusterDir}"/"$nodeport"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# requirepass foobared|requirepass "$redisPass"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|appendonly no|appendonly yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-config-file nodes-6379.conf|cluster-config-file nodes-"${nodeport}".conf|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|port 6379|port "${nodeport}"|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|# cluster-enabled yes|cluster-enabled yes|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
            sed -i "s|pidfile /var/run/redis_6379.pid|pidfile ${clusterDir}/$nodeport/redis_${nodeport}.pid|g" ${clusterDir}/$nodeport/redis${nodeport}.conf
		
		$redisServer ${clusterDir}/$nodeport/redis${nodeport}.conf
		if [ $? -eq 0 ];then
		    echo -e "\033[46;30m 启动redis-server $nodeport成功  \033[0m"
		fi
	done
	;;
esac
}

redisCluster()
{
    echo "----------------------------------------------------"
    echo "请在节点1上执行如下参考命令，将所有redis节点加入集群"
    echo "/ops/app/redis/src/redis-cli  -a smcaiot_redis_pass --cluster create 172.16.4.11:7000 172.16.4.11:7001 172.16.4.12:7002 172.16.4.12:7003 172.16.4.13:7004 172.16.4.13:7005  --cluster-replicas 1"
    echo -e "\033[46;30m redis-cli -a smcaiot_redis_pass -c -h 172.16.4.11 -p 7000  \033[0m"
    echo "----------------------------------------------------"
}

read -p "默认集群为3台服务器组成6个节点,3主3从,键入安装节点编号: 1 2 3  请输入： "  nodenumber
initDir
install_make
redis_node_config_install
redisCluster
