#!/bin/bash
echo "Criando usuários…"
username="maria"
comment="Maria"
usershell="/bin/bash"
password="Senha5000"

useradd ${username} -c "${comment}" -s ${usershell} -m  -p "$(openssl passwd -6 ${password})"
passwd ${username} -e

echo "Finalizado!"
