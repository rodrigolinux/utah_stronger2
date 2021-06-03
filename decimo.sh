#!/bin/bash
# ----------------------------------------------
# decimo.sh - script de backup completo
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa será usado para realizar backup full de arquivos localizados em um servidor
# onde teremos que copiar a pasta /srv/samba
#
# Exemplo de execucao:
# sudo ./decimo.sh
#

BKPDIR="/srv/backup"
FILESDIR="/srv/samba"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf /srv/$FILENAME $BKPDIR"
ADMIN="linuxx.rodrigo@gmail.com"
SENDUSER="root@deb10-no-x.local"

echo -e "\n"
echo "Iniciando o script de backup"
echo -e "\n"

verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi
}

mail() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Backup" -a $LOGFILE -m "Segue"
}
mail_err() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Backup" -a $ERRORLOG -m "Segue"
}

rsync -avhp --progress $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
verificar

exit 0
