#!/bin/bash

read -p "Digite o caminho do diretório: " caminho

if [ -d "$caminho" ]; then
	echo "O caminho é um diretório válido."
else 
	echo "O caminho não é um diretório válido ou ele não existe."
fi
