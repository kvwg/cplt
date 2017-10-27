#!/bin/bash

##########################################################################
#
#create samba share with user,password,share path and container name
#usage: init_samba_docker.sh $user $password $sharepath $container
#
#########################################################################

user_name=$1       #default : devuser
user_passwd=$2     #default : 666666
share_path=$3      #default : /home/devuser
container_name=$4  #default : devuser_samba

if [ x"$container_name" =  x"" ]
then
    container_name="$(whoami)_samba"
fi
if [ x"$user_name" =  x"" ]
then
    user_name="$(whoami)"
fi
if [ x"$share_path" =  x"" ]
then
    share_path="$HOME"
fi
if [ x"$user_passwd" =  x"" ]
then
    user_passwd="666666"
fi

container_id=$(docker run --restart=unless-stopped --name ${container_name} -it -p 139:139 -p 445:445 -v ${HOME}:${HOME} -d dperson/samba  -u "${user_name};${user_passwd}" -s "${user_name}_share;${share_path};yes;no;no;${user_name}")

[ -n "${container_id}" ] && { echo "create samba container success!"; } || { echo "create samba container failed!"; }

