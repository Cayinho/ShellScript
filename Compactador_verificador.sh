#!/bin/bash

if [ "$#" -lt 2 ]; then
	echo "Uso: $0 <arquivo_de_saida> <arquivo1> [arquivo2]..."
	exit 1
fi

arquivo_saida="$1"
arquivos=("${@:2}")

for arquivo in "${arquivos[@]}"; do
	if [ ! -e "$arquivo" ]; then
		echo "Erro: Arquivo não encontrado: $arquivo"
		exit 1
	fi
done

echo "Compactando arquivos..."
tar -czf "$arquivo_saida" "${arquivos[@]}"

echo "Compactado com sucesso em $arquivo_saida"
