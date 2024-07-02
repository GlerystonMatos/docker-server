#!/bin/bash

echo -e "Os seguintes comandos estão disponíveis:\n"

echo "– iniciar: Iniciar todas as aplicações do ambiente"
echo "– parar: Parar todas as aplicações do ambiente"
echo "– reiniciar: Reiniciar todas as aplicações do ambiente (Neste processo é possível editar as variáveis de ambiente, mudando mudar a versão das aplicações e suas configurações)"
echo "– status: Inicia o monitoramento das aplicações sendo executadas em tempo real, podendo verificar uso de CPU, memória e utilização da rede (Para sair pressione CTRL + C)"
echo "– show_logs <nome-container>: Exibe os logs em tempo real da aplicação (Para sair pressione CTRL + C)"
echo "– inspecionar <nome-objeto>: Exibe informações detalhadas sobre objetos Docker"
echo "– acessar <nome-container>: Acessa o ambiente dentro do container (Para sair usar o comando exit)"
echo "– atualizar: Atualizar ambiente (Nesse processo é possível atualizar as configurações e especificações do ambiente)"

echo -e "\nOs comandos podem ser usados pelo usuário que realizou a instalação do ambiente"
echo "Os comandos inciar, parar e reiniciar devem ser executados dentro da pasta do ambiente"