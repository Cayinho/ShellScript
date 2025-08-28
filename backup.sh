#! /bin/bash

diretorio_backup="/home/caio/Documents/devops"
nome_arquivo="backup_$(date +%Y%d_%H%M%S).tar.gz"
tar -czf "$diretorio_backup/$nome_arquivo" "$diretorio_backup"
echo "Backup Concluido em $nome_arquivo"
