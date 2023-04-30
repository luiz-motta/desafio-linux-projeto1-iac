#!/bin/bash

echo "A verificar diretórios..."

if [ -d "/publico" ]
then
echo "Diretório /publico já existente!"
else 
mkdir /publico
echo "Diretório /publico criado com sucesso!"
fi

if [ -d "/adm" ]
then
echo "Diretório /adm já existente!"
else 
mkdir /adm
echo "Diretório /adm criado com sucesso!"
fi

if [ -d "/ven" ]
then
echo "Diretório /ven já existente!"
else 
mkdir /ven
echo "Diretório /ven criado com sucesso!"
fi

if [ -d "/sec" ]
then
echo "Diretório /sec já existente!"
else 
mkdir /sec
echo "Diretório /sec criado com sucesso!"
fi

echo "A verificar grupos..."

if grep -q "GRP_ADM" /etc/group
then
echo "O grupo GRP_ADM já existe!"
else
groupadd GRP_ADM
echo "Grupo GRP_ADM criado com sucesso!"
fi

if grep -q "GRP_VEN" /etc/group
then
echo "O grupo GRP_VEN já existe!"
else
groupadd GRP_VEN
echo "Grupo GRP_VEN criado com sucesso!"
fi

if grep -q "GRP_SEC" /etc/group
then
echo "O grupo GRP_SEC já existe!"
else
groupadd GRP_SEC
echo "Grupo GRP_SEC criado com sucesso!"
fi

echo "A especificar permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "A criar usuários..."

if grep -q "carlos" /etc/passwd
then
echo "Usuário carlos já existe!"
else
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "O usuário carlos foi criado com sucesso!"
fi

if grep -q "maria" /etc/passwd
then
echo "Usuário maria já existe!"
else
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "O usuário maria foi criado com sucesso!"
fi

if grep -q "joao" /etc/passwd
then
echo "Usuário joao já existe!"
else
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "O usuário joao foi criado com sucesso!"
fi

if grep -q "debora" /etc/passwd
then
echo "Usuário debora já existe!"
else
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "O usuário debora foi criado com sucesso!"
fi

if grep -q "sebastiana" /etc/passwd
then
echo "Usuário sebastiana já existe!"
else
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "O usuário sebastiana foi criado com sucesso!"
fi

if grep -q "roberto" /etc/passwd
then
echo "Usuário roberto já existe!"
else
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "O usuário roberto foi criado com sucesso!"
fi

if grep -q "josefina" /etc/passwd
then
echo "Usuário josefina já existe!"
else
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "O usuário josefina foi criado com sucesso!"
fi

if grep -q "amanda" /etc/passwd
then
echo "Usuário amanda já existe!"
else
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "O usuário amanda foi criado com sucesso!"
fi

if grep -q "rogerio" /etc/passwd
then
echo "Usuário rogerio já existe!"
else
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "O usuário rogerio foi criado com sucesso!"
fi





