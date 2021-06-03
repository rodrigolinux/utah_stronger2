#!/bin/bash
# ----------------------------------------------
# quinto.sh - Condicional if then else
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira capturar o primeiro parametro passado depois do programa e ira armazenar
# na variavel $1, caso o valor seja start, ira executar o trecho de comandos do start, caaso
# seja stop ira executar o trecho do stop, caso seja status ira executar o trecho do status,
# caso nao seja nenhum dos valores acima ira mostrar a mensagem para usar os valores start,
# stop ou status.
#
# Exemplo de execucao:
# ./quinto.sh start|stop|status
#

PID="/tmp/stronger.pid"

echo
echo "Bem vindo ao Stronger!"
echo
case $1 in
	    start)
			 echo "Iniciando o programa Stronger"
			 echo "....."
			 sleep 2s
			 echo ".........."
			 sleep 2s
			 echo "..............."
			 sleep 2s
			 echo "...................."
			 echo
			 touch $PID 
			 echo "O Programa Stronger foi Iniciado com Sucesso!"
			 echo
			 ;;
		stop)
			 echo "Parando o programa Stronger"
			 echo "....."
			 sleep 2s
			 echo ".........."
			 sleep 2s
			 echo "..............."
			 sleep 2s
			 echo "...................."
			 echo
			 rm $PID 
			 echo "O Programa Stronger foi Parado com Sucesso!"
			 echo
			 ;;
		status)
			 echo "Verificando o status do programa Stronger"
			 echo 
			 if [ -f "$PID" ]; then
			 	echo "O Programa Stronger esta em execucao"
				echo
			 else
				echo "O Programa Stronger nao esta em execucao"
				echo
			 fi
			 ;;
		*)
			 echo "Por favor digite: ./quinto.sh start|stop|status"
			 echo
			 ;;
esac
