#!/bin/bash

uid=$1
gid=$2

usermod -u $uid devuser
groupmod -g $gid devuser

newid=$(id devuser)
echo "modify devuser : $newid"

