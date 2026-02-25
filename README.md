# Instalação Zabbix Agent 2

Instalação automatizada do Zabbix Agent 2 para instâncias EC2.

## Sistemas Suportados

- Ubuntu 22.04
- Ubuntu 24.04
- Amazon Linux 2
- Amazon Linux 2023

## Como Usar

1. Acesse a instância EC2 via SSM
2. Clone o repositório:
```bash
git clone <repo-url> kxc-zabbix
cd kxc-zabbix
```

3. Execute o script:
```bash
chmod +x deploy.sh
./deploy.sh
```

4. Informe o hostname quando solicitado

O script verifica e instala o Ansible automaticamente se necessário.

## Configuração

Edite `roles/zabbix_agent/defaults/main.yml` para ajustar:
- `zabbix_version`: Versão do Zabbix (padrão: 7.0)
- `zabbix_server_dns`: DNS do servidor Zabbix (padrão: zabbix.kxc.com.br)
