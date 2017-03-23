#!/bin/sh

rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6

yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum -y install docker-io

service docker start

chkconfig docker on

yum install -y git

cd /home/ec2-user

git clone https://github.com/candlegithub/mimi_admin.git

docker run  -it -p 80:80 -v /home/ec2-user/mimi_admin/:/opt --name mimi_admin ruby:2.3.0 /bin/bash && cd /opt

bundle install

bundle exec rake assets:precompile

bundle exec rake assets:precompile
