#!/bin/bash

rst=$(ps -ef|grep redis-server|grep -v grep|wc -l)
if [ ${rst} -ne 0 ]
then
   echo "redis is running"
   exit 0
else
   echo "redis is not running"
   exit 1
fi

	
