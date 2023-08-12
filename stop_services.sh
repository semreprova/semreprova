#!/bin/bash

# Parar os serviços da plataforma
echo "Parando os serviços da plataforma..."
systemctl stop servico1
systemctl stop servico2
# Adicione mais linhas para cada serviço que você deseja parar

# Verificar se os serviços foram parados
if [ $? -eq 0 ]; then
    echo "Serviços parados com sucesso."
else
    echo "Erro ao parar os serviços."
fi
