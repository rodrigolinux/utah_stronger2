#!/bin/bash
# ----------------------------------------------
# mr.robot..sh - Nosso decimo programa em shell - Mr Robot
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa e um robo interativo estilo Alexia, chamado Mr Robot, criado para invadir
# determinadas URL's, buscar vulnerabilidades e tambem veriricar conectividade.
#
# Exemplo de execucao:
# ./mr.robot.sh
#

FOLDER="/home/rodrigo/utah/stronger2/"

source $FOLDER/instructions.txt
#cat $FOLDER/instructions.txt

echo -e "\e[31m\e[1m\e[5mOlá, eu sou o Mr. Robot, fui criado para atacar.\nO que deseja fazer?\e[m\e[m\e[m"

sleep 1s

while true; do
		echo -e "\n"
		read -p "Diga agora!" ACTION
		echo -e "\n"
		
		case $ACTION in
				*"ping"*|*"pingar"*|*"conectividade"*)
						DADOS="$(($RANDOM%10))"
						ping -c 4 "${sites[$DADOS]}"
				;;
				*"nmap"*|*"mapear"*|*"portas abertas"*|*"mapeando"*)
						DADOS="$(($RANDOM%10))"
						nmap -sS "${sites[$DADOS]}"
				;;
				*"conecte"*|*"acessar"*|*"acesse"*|*"ssh"*)
						DADOS="$(($RANDOM%10))"
						ssh -l root "${openssh[$DADOS]}"
				;;
		esac
done
