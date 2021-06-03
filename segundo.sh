#!/bin/bash
# ----------------------------------------------
# segundo.sh - Nosso Segundo Programa em Shell
#
# Site: http://www.site.com.br
# Autor: Usuario <usuario@email.com>
# Mantenedor: Usuario <usuario@gmail.com>
# ----------------------------------------------
# Este programa ira mostrar as principais variaveis de controles internas do shell,
# que poderao ser usadas por outros programas a fim de obtermos alguma informacao.
#
# Exemplo de execucao:
# ./segundo.sh linux
# ./segundo.sh linux windows
#
echo
echo "Bem Vindo as Variaveis de Controle Internas do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depois do script, que foi: $1"
echo
echo "A variavel \$2 armazena o segundo parametro passado depois do script, que foi: $2"
echo
echo "A variavel \$3 armazena o terceiro parametro passado depois do script, que foi: $3"
echo
echo "A variavel \$0 armazena o comando que foi executado | nome do programa, que foi: $0"
echo
echo "A variavel \$# armazena o numeo de parametros que foram passados, que foram: $#"
echo
echo "A variavel \$\$ ou \$@ armazena o numero PID do processo gerado na execucao do programa, que foi: $$"
echo
echo "A variavel \$? armazena o valor de retorno (exit code) do ultimo comando | programa executado, que foi: $?"
echo

