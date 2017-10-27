#!/bin/bash

container_name=$1

if [ x"$container_name" =  x"" ]
then
    container_name="$(whoami)_dev"
fi
container_ip=$(docker inspect ${container_name} --format='{{.NetworkSettings.IPAddress}}')

[ -n "${container_ip}" ] || { echo "container is null!"; }

ssh devuser@"${container_ip}"


