#!/bin/bash

container_name=$1
uid=$(id -u)
gid=$(id -g)

if [ x"$container_name" =  x"" ]
then
    container_name="$(whoami)_dev"
fi
container_id=$(docker run --restart=unless-stopped -it -v $HOME/share/share_data:/home/devuser/share -d --name ${container_name} wugang/centos6_dev:0.1 /root/init_dev.sh ${uid} ${gid})
container_ip=$(docker inspect --format='{{.NetworkSettings.IPAddress}}' ${container_id})

[ -n "${container_ip}" ] && { echo "create container success,access container by cmd : ssh devuser@${container_ip}"; } || { echo "create container failed!"; }

