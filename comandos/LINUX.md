# Comandos linux

Desligar servidor:
```bash
poweroff
```

Desligar servidor:
```bash
shutdown -h now
```

Reiniciar servidor:
```bash
reboot
```

Reiniciar servidor:
```bash
shutdown -r now
```

Fazer logout no servidor:
```bash
logout
```

Fazer logout no servidor:
```bash
exit
```

Instalar ferramentas de rede:
```bash
apt install net-tools
```

Verificar IP do servidor:
```bash
ifconfig
```

Criar um diretório:
```bash
mkdir <nome-da-pasta>
```

Navegar para um diretório:
```bash
cd <nome-da-pasta>/
```

Criar um arquivo:
```bash
touch <nome_arquivo.extensao>
```

Abrir arquivo com o editor nano:
```bash
nano <nome_arquivo.extensao>
```

Ver conteúdo de um arquivo:
```bash
cat <nome_arquivo.extensao>
```

Apagar um arquivo:
```bash
rm <nome_arquivo.extensao>
```

Apagar um diretório:
```bash
rmdir <nome-da-pasta>
```

Baixar um arquivo a partir de um link externo:
```bash
curl -s -L -O <caminho-arquivo-remoto>
```

Dar permissão de execução para um script .sh:
```bash
chmod +x <nome_script>.sh
```

Executar um script .sh:
```bash
./<nome_script>.sh
```

Apagar todos os arquivos e pastas de um diretório:
```bash
rm -rf *
```

Listar todos os arquivos e pastas de um diretório (Inclusive ocultos):
```bash
ls -a
```

Arir o arquivo de configuração do usuário (.bashrc) usando o editor nano:
```bash
nano ~/.bashrc
```

Recarregar arquivo de configuração do usuário (.bashrc):
```bash
source ~/.bashrc
```