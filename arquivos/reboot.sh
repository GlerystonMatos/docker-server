#!/bin/bash

echo ""
read -p "Deseja reiniciar o servidor? (sim/não): " resposta

if [[ "$resposta" =~ ^(sim|s|S|SIM|Sim)$ ]]; then
    echo -e "\nReiniciando o servidor..."
    sudo reboot
else
    echo "Operação cancelada."
fi