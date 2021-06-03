#!/bin/bash
# ----------------------------------------------
# oitavo.sh - Laco de repeticao for
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira verificar todos os arquivos .conf no diretorio /etc e exibir na tela 
#
# Exemplo de execucao:
# ./oitavo.sh
#

CONFS="/etc/*.conf"

echo
echo "Mostrando uma mensagem para cada ocorrencia de arquivos .conf no diretorio /etc/"
echo
echo

for ARQUIVOS in `ls $CONFS`; do
        echo "Foi encontrado o arquivo $ARQUIVOS, dentro do diretório /etc"
done

echo "Total de arquivos no diretorio: " `ls $CONFS | wc -l`

exit 0
