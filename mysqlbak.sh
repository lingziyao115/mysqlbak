#!/bin/bash

# Backup Config
BACKUP_DIR=/root/bak/mysql
MYSQLDUMP_CMD=/usr/bin/mysqldump

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
DEFAULTS_EXTRA_FILE=$SCRIPT_DIR/mysql_backup.conf
DB_NAMES_FILE=$SCRIPT_DIR/db_names.txt

DATE=`date +%Y%m%d`
TIME=`date +%H%M%S`

DB_NAMES=$(cat "$DB_NAMES_FILE")
echo "[$DATE$TIME]"
echo "Starting ..."
for DB_NAME in $DB_NAMES
do
    TODAY_DIR=$BACKUP_DIR/$DATE
    if [ ! -d $TODAY_DIR ]; then
        mkdir -p $TODAY_DIR
    fi

    echo -n "  BACKUP $DB_NAME ... "
    $MYSQLDUMP_CMD --defaults-extra-file=$DEFAULTS_EXTRA_FILE --triggers --routines --events $DB_NAME | gzip > $TODAY_DIR/$DB_NAME.$TIME.sql.gz
    echo "[OK]"
done
echo "End!"

#find $BACKUP_DIR -name '*.sql.gz'  -ctime +7 | xargs rm -f > /dev/null 2>&1
