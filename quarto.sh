#!/bin/bash
# ----------------------------------------------
# quarto.sh - Condicional if then else
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variavel $DIGITADO
# e comparar com o valor na variavel $SEGREDO. Se os valores forem iguais ira mostrar que foi
# revelado o segredo na tela, se nao foir igual ira mostrar um erro. 
#
# Exemplo de execucao:
# ./quarto.sh
#

SEGREDO="utah"

echo
echo "Bem Vindo ao Detector de Segredos"
echo
echo "Por favor, digite o segredo: "
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus parabens, voce acertou o segredo!"
	echo
else
	echo "ERROU! Esta perdendo o seu tempo na $DIGITADO"
	echo
