#!/bin/bash

echo "Processo de Criação da Infraestrutura"

echo "Etapa 1 - Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Etapa 2 - Criando Grupo de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Etapa 3 - Criando Usuários"

useradd carlos -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 senha123)
useradd maria -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 senha123)
useradd joao -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 senha123)

useradd debora -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 senha123)
useradd sebastiana -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 senha123)
useradd roberto -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 senha123)

useradd josefina -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 senha123)
useradd amanda -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 senha123)
useradd rogerio -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 senha123)

echo "Etapa 4 - Atribuindo Propridade de Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

echo "Etapa 5 - Atribuindo Permissões de Diretórios"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo de Crianção Finalizado!"
