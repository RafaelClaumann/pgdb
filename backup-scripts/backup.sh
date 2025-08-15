#!/bin/bash

MYSQL_HOST="db"
MYSQL_USER="root"
MYSQL_PASS="password"

MYSQL_DB="loja"
CURRENT_DATE=$(date +%F_%H-%M-%S)
ARQUIVO="/backups/${MYSQL_DB}_${CURRENT_DATE}.sql"

mysqldump -h $MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB  > $ARQUIVO

# Limpa backups antigos (mais de 7 dias)
find /backups -type f -mtime +7 -delete
