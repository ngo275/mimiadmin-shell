# mimiadmin-shell

AWS EC2 Amazon linux

## setup

1, `cd /home/ec2-user`

2, `sudo su`

3, `sh *this shell file* `

4, (in docker container) `cd opt && bundle install`

5, (in docker container) `bundle exec rake assets:precompile`

6, (in docker container) `rails s --port=80 -e production -d`


## enter docker container

`docker start mimi_admin && docker exec -it mimi_admin /bin/bash`

## restart (in docker container)

1, `ps aux | grep rails | grep -v grep | awk '{ print "kill -9", $2 }' | sh`

2, `bundle exec rake assets:precompile`

3, `rails s --port=80 -e production -d`
