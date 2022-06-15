#!/bin/bash

arq=x

while true; do
	echo -e "\nMenu"
	echo "=========================================
	r - Digite o nome de um arquivo que será processado.
	a - Remova todas as letras do arquivo.
	b - Remova todos os dígitos do arquivo.
	c - Substitua todos os caracteres que não são letras enem dígitos do arquivo por $
        q - Saia do Script."
	
	read -p "Escolha uma opção:" option

	case $option in
		r)
			read -p "Informe o nome do arquivo: "$arq
			;;
		a)
			sed -E "s/[a-zA-Z]//g" $arq
			;;
		b)	
			sed -E "s/[0-9]//g" $arq
			;;
		c)
			sed -E "s/[^a-zA-Z0-9]/$/g" $arq
			;;
		q) 
			break
			;;
		*) 
			echo "Erro: Opção incorreta! Por favor, tente novamente!"
			;;
	esac
 done

