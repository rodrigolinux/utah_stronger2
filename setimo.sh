#!/bin/bash
# ----------------------------------------------
# setimo.sh - Laco de repeticao until
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel nao for
# 10, ele ira mostrar a mensagem na tela que o valor nao e 10 e mostrara o valor da variavel,
# quando o valor atingir o 10 o programa sera finalizado.
#
# Exemplo de execucao:
# ./setimo.sh
#

NUMERO="0"

echo
echo "Bem vindo ao programa numeros"
echo

until [ $NUMERO -eq "10" ]; do
		echo "O valor da variavel e: $NUMERO"
		echo "O $NUMERO e menor que 10"
		let NUMERO=$NUMERO+1
done

exit 1
