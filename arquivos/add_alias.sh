#!/bin/bash

if [ -n "$SUDO_USER" ]; then
    target_user="$SUDO_USER"
else
    target_user="$USER"
fi

cd /home/$target_user/

alias_name="alias-comandos"
alias_command=$alias_name
alias_line=$alias_name

if ! grep -q "$alias_line" .bashrc; then
    echo "" >> .bashrc
    echo "# $alias_line" >> .bashrc
    echo "[docker-server] - Linha # '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Linha # '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="iniciar"
alias_command="~/scripts/start.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="parar"
alias_command="~/scripts/stop.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="reiniciar"
alias_command="~/scripts/restart.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="status"
alias_command="~/scripts/status.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="show_log"
alias_command="~/scripts/show_logs.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="comandos"
alias_command="~/scripts/commands.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >> .bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

echo "[docker-server] - Recarregando arquivo de configuração..."
source .bashrc