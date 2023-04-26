#!/bin/bash

echo "Criando diiretórios…"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de utilizadores…"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando utilizadores e definindo os respectivos grupos…"
#Utilizadores ADM
useradd carlos -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd maria -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd joao -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
#Utilizadores VEN
useradd debora -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd sebastiana -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd roberto -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
#Utilizadores SEC
useradd josefina -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd amanda -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"
useradd rogerio -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 Senha5000)"

echo "Ajustando permissões dos diretórios…"
chmod 777 /publico
chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec

echo "Tarefa concluída!"
