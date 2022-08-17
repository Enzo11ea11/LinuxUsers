#!/bin/bash

echo "Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários"

useradd Enzo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Bruna -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Eugenia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
