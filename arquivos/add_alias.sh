#!/bin/bash

if [ -n "$SUDO_USER" ]; then
    target_user="$SUDO_USER"
else
    target_user="$USER"
fi

cd /home/$target_user/

function_name="functions-comandos"

if ! grep -q "$function_name" .bashrc; then
    echo "" >>.bashrc
    echo "# $function_name" >>.bashrc
    echo "[docker-server] - Linha # '$function_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Linha # '$function_name' já existe no arquivo de configuração do usuário $target_user"
fi

function_name="show_logs_func"

if ! grep -q "$function_name" .bashrc; then
    echo 'show_logs_func() {' >>.bashrc
    echo '    ~/scripts/show_logs.sh "$@"' >>.bashrc
    echo '}' >>.bashrc
    echo "[docker-server] - Função '$function_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Função '$function_name' já existe no arquivo de configuração do usuário $target_user"
fi

function_name="inspect_func"

if ! grep -q "$function_name" .bashrc; then
    echo 'inspect_func() {' >>.bashrc
    echo '    ~/scripts/inspect.sh "$@"' >>.bashrc
    echo '}' >>.bashrc
    echo "[docker-server] - Função '$function_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Função '$function_name' já existe no arquivo de configuração do usuário $target_user"
fi

function_name="access_func"

if ! grep -q "$function_name" .bashrc; then
    echo 'access_func() {' >>.bashrc
    echo '    ~/scripts/access.sh "$@"' >>.bashrc
    echo '}' >>.bashrc
    echo "[docker-server] - Função '$function_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Função '$function_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="alias-comandos"

if ! grep -q "$alias_name" .bashrc; then
    echo "" >>.bashrc
    echo "# $alias_name" >>.bashrc
    echo "[docker-server] - Linha # '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Linha # '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="iniciar"
alias_command="~/scripts/start.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="parar"
alias_command="~/scripts/stop.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="reiniciar"
alias_command="~/scripts/restart.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="status"
alias_command="~/scripts/status.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="show_logs"
alias_command="show_logs_func"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="inspecionar"
alias_command="inspect_func"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="acessar"
alias_command="access_func"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="comandos"
alias_command="~/scripts/commands.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

alias_name="atualizar"
alias_command="~/scripts/update.sh"
alias_line="alias $alias_name='$alias_command'"

if ! grep -q "$alias_line" .bashrc; then
    echo "$alias_line" >>.bashrc
    echo "[docker-server] - Alias '$alias_name' adicionada ao arquivo de configuração do usuário $target_user"
else
    echo "[docker-server] - Alias '$alias_name' já existe no arquivo de configuração do usuário $target_user"
fi

echo "[docker-server] - Recarregando arquivo de configuração..."
source .bashrc