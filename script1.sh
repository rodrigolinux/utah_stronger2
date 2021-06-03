#!/bin/bash
#
# script01.sh - Emulacao do comando seq em Bash
#
# O comando seq recebe dois numeros e mostra na saida padrao todos os numeros
# existentes entre eles, em uma sequencia pronta para ser usada pelo comando for.
# Caso omitido o numero inicial e utilizado o 1.
#
# o=+ a=1 z=${1:-1}; [ "$2"] && { a=$1; z=$2; } ; [ $a -gt $z ] && o=-
# while [ $a -ne $z ]; do echo $a ; eval "a=\$((a$o 1))"; done; echo $a
#

o=+
a=1
z=${1:-1}

[ "$2" ] && {
		a=$1
		z=$2
}

[ $a -gt $z ] && o=-

while [ $a -ne $z ]; do
	echo $a
	eval "a=\$((a$o 1))"
done

echo $a
