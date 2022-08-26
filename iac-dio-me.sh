# /bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuário..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123)

echo "Adicionando usuários a grupos..."

usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "Atribuindo permissões a diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Finalizado."



