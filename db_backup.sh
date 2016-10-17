#!/bin/bash
#
# Create individual SQL files for each database. These files
# are imported automatically during an initial provision if
# the databases exist per the import-sql.sh process.
timestamp=$(date +%s)
mysql -e 'show databases' | \
grep -v -F "information_schema" | \
grep -v -F "performance_schema" | \
grep -v -F "mysql" | \
grep -v -F "test" | \
grep -v -F "Database" | \
while read dbname; do mysqldump -u root -proot "$dbname" > /var/www/public/database/"$dbname"-$timestamp.sql && echo "Database $dbname backed up..."; done