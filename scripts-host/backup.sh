#!/bin/bash

ARQUIVO="/backups/loja_$(date +%F_%H-%M-%S).sql"
MYSQL_HOST="db"
MYSQL_USER="root"
MYSQL_PASS="password"
MYSQL_DB="loja"

mysqldump -h $MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB  > $ARQUIVO

# Limpa backups antigos (mais de 7 dias)
find /backups -type f -mtime +7 -delete
