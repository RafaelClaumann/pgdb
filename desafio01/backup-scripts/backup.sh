#!/bin/bash

#exec >> /proc/1/fd/1 2>&1
CORRELATION_ID=$(date +%s%N)

MYSQL_HOST=db
MYSQL_USER=root
MYSQL_PASSWORD=password
MYSQL_DB=loja

BACKUP_DIR=/backups
MYSQL_DATA=/var/lib/mysql
TYPE=$1
DATE=$(date +"%Y-%m-%d_%H-%M-%S.%3N")

LAST_FULL="$BACKUP_DIR/last_full.txt"

echo "$CORRELATION_ID - [$(date +"%Y-%m-%d_%H-%M-%S.%3N")][START $TYPE BACKUP]"

if [ "$TYPE" = "full" ]; then
    TARGET="$BACKUP_DIR/full_$DATE"
    echo "$CORRELATION_ID - [POC] Criando FULL backup em $TARGET"
    
   xtrabackup --backup \
        --datadir=$MYSQL_DATA \
        --target-dir=$TARGET \
        --host=$MYSQL_HOST \
        --user=$MYSQL_USER \
        --password=$MYSQL_PASSWORD \
        >/dev/null 2>&1

    echo "$TARGET" > $LAST_FULL

elif [ "$TYPE" = "incremental" ]; then
    if [ ! -f "$LAST_FULL" ]; then
        echo "$CORRELATION_ID - [POC] Nenhum full encontrado, criando full primeiro."
        $0 full
        exit 0
    fi

    BASE=$(cat $LAST_FULL)
    TARGET="$BACKUP_DIR/inc_$DATE"
    echo "$CORRELATION_ID - [POC] Criando INCREMENTAL baseado em $BASE → $TARGET"
    xtrabackup  --backup \
        --datadir=$MYSQL_DATA \
        --incremental-basedir=$BASE \
        --target-dir=$TARGET \
        --host=$MYSQL_HOST \
        --user=$MYSQL_USER \
        --password=$MYSQL_PASSWORD \
        >/dev/null 2>&1
    
else
    echo "Uso: $0 [full|incremental]"
    exit 1
fi

echo "$CORRELATION_ID - [$(date +"%Y-%m-%d_%H-%M-%S.%3N")][FINISH $TYPE BACKUP]"
echo
