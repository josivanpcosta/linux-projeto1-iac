#!/bin/bash

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupo de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useardd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useardd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useardd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useardd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useardd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useardd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useardd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useardd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useardd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC


echo "adcionar usuarios ao grupo..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim..."




