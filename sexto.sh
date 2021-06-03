#!/bin/bash
# ----------------------------------------------
# sexto.sh - Laco de repeticao while
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel for
# menor que 10, ele ira mostrar a mensagem na tela que o valor e menor que 10 e motrara o
# valor da variavel, quando o valor atingir 10 o programa sera finalizado
#
# Exemplo de execucao:
# ./sexto.sh
#

NUMERO="0"

echo
echo "Bem vindo ao programa numeros"
echo

while [ $NUMERO -lt "10" ]; do
		echo "O valor da variavel e: $NUMERO"
		echo "O $NUMERO e menor que 10"
		let NUMERO=$NUMERO+1
done

exit 0
