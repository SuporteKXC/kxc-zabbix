#!/bin/bash
set -e

# Verificar e instalar Ansible
if ! command -v ansible-playbook &> /dev/null; then
    echo "Ansible não encontrado. Instalando..."
    
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        
        if [[ "$ID" == "ubuntu" ]]; then
            sudo apt update
            sudo apt install -y ansible
        elif [[ "$ID" == "amzn" ]]; then
            sudo yum install -y ansible
        else
            echo "Sistema não suportado"
            exit 1
        fi
    fi
fi

read -p "Digite o nome do cliente (Hostname): " CLIENTE

if [ -z "$CLIENTE" ]; then
    echo "Você precisa informar o nome do cliente!"
    exit 1
fi

ansible-playbook main.yml -e cliente_nome="$CLIENTE"