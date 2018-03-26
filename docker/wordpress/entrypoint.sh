#!/bin/bash

# Start nginx
/etc/init.d/nginx start
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start nginx: $status"
  exit $status
fi

# Start mysql
/etc/init.d/mysql start
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start mysql: $status"
  exit $status
fi

while sleep 60; do
  ps aux |grep nginx |grep -q -v grep
  NGINX_STATUS=$?
  ps aux |grep mysql |grep -q -v grep
  MYSQL_STATUS=$?
  
  if [ $NGINX_STATUS -ne 0 -o $MYSQL_STATUS -ne 0 ]; then
    echo "One of the processes has already exited."
    exit 1
  fi
done