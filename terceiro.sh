#!/bin/bash
# ----------------------------------------------
# terceiro.sh - Condicional if then else
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variavel $1
# e ira comparar com valor da varial SEGREDO. Se os valores forem iguais ira mostrar que
# foi revelado o segredo na tela, se nao for igual, ira mostrar um erro.
#
# Exemplo de execucao:
# ./terceiro.sh utah
# ./terceiro.sh blue
#

SEGREDO="utah"

echo
echo "Bem Vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus parabens, voce acertou o segredo!"
	echo
else
	echo "ERROU! Esta perdendo o seu tempo na $1"
	echo
fi
