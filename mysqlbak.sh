#!/bin/bash

CONFIG_FILE=backup.conf
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
DEFAULTS_EXTRA_FILE=$SCRIPT_DIR/$CONFIG_FILE

DB_NAMES=$(grep db_names $CONFIG_FILE | cut -d= -f2)
DB_NAMES_ARR=(${DB_NAMES//,/ })
BACKUP_DIR=$(grep backup_dir $CONFIG_FILE | cut -d= -f2)
MYSQLDUMP_CMD=$(grep mysqldump_cmd $CONFIG_FILE | cut -d= -f2)

DATE=`date +%Y%m%d`
TIME=`date +%H%M%S`

echo "[$DATE$TIME]"
echo "Starting ..."
for DB_NAME in ${DB_NAMES_ARR[@]}
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
