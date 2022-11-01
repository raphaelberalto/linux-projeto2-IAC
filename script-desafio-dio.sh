#!/bin/bash

# Primeira etapa: criação dos diretórios #

mkdir publico adm ven sec

# Segunda etapa: criação dos grupos #

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Terceira etapa: criação dos usuários e inserção dos usuários nos grupos #

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

# Quarta etapa: colocando o usuário root como dono dos diretórios #

chown root /publico
chown root /adm
chown root /ven
chown root /sec

# Quinta etapa: inserindo os usuários em seus respectivos grupos #

usermod -g GRP_ADM carlos
usermod -g GRP_ADM maria
usermod -g GRP_ADM joao

usermod -g GRP_VEN debora
usermod -g GRP_VEN sebastiana
usermod -g GRP_VEN roberto

usermod -g GRP_SEC josefina
usermod -g GRP_SEC amanda
usermod -g GRP_SEC rogerio

# Sexta etapa: alterando permissões de diretórios" #

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

# Setima etapa: exibição de mensagem na tela pós-execução do script #

echo "Script aplicado"


