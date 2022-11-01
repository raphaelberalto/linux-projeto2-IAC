#!/bin/bash

# Primeira etapa: checar atualizações para o servidor #

apt update

# Segunda etapa: realizar atualizações no servidor #

apt upgrade

# Terceira etapa: realizar a instalação do Apache2 #

apt install apache2 -y

# Quarta etapa: realizar a instalação do Unzip #

apt install unzip -y

# Quinta etapa: Baixar a aplicação indicada no endereço #

wget -p /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Sexta etapa: copiar os arquivos da aplicação no diretório padrão do Apache #

unzip /tmp/main.zip -d /etc/apache2/

# Sétima etapa: exibição de mensagem na tela pós-execução de script #

echo "Script aplicado"
