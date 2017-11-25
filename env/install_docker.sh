#!/bin/bash

yum -y update

cat >/etc/yum.repos.d/docker.repo <<-EOF
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

yum install -y docker-engine
yum install -y docker-selinux

chmod a+rw /var/run/docker.sock
usermod -g docker devuser

systemctl start docker.service
systemctl enable docker.service
