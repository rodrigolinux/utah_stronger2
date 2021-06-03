#!/bin/bash

dialog --yesno "Quer ver as horas?" 0 0

if [ $? -eq 0 ]; then
	echo -e "\n"
	echo "Agora sao: $(date)"
	echo -e "\n"
else
	echo -e "\n"
	echo "Ok"
	echo -e "\n"
fi
