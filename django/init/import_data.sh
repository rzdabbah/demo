#!/bin/bash 
echo "Start mySql db migration"
sleep 10
mysql -h db -p$MYSQL_ROOT_PASSWORD  < data.sql
mkdir ./shared
touch ./shared/migration.done
echo "migration done";