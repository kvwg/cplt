#!/bin/bash

#add for chkconfig  
#chkconfig: 2345 70 30  
#description: the description of the shell   #auto mount share path 
#processname: vmhgfs_fuse_start

/usr/bin/vmhgfs-fuse .host:/ /home/devuser/share -o subtype=vmhgfs-fuse,allow_other

