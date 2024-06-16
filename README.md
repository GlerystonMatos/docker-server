# <img alt="docker" height="20" src="./imagens/docker.png" style="margin-bottom: -9px !important">  docker-server
Repositório para armazenar scripts, exemplos e arquivos para criar e configurar um servidor com docker

# <img alt="ubuntu" height="20" src="./imagens/ubuntu.png" style="margin-bottom: -9px !important"> ambiente
Para os exemplos e passos contidos neste repositório será utilizando <a href="https://ubuntu.com/download/server" target="_blank">Ubuntu Server LTS</a> (Versão 24.04 neste momento), a instalação é padrão não sendo necessário instalar nenhum opcional apenas o SSH.

<b>Observação:</b> Caso prefira pode utilizar uma máquina virtual para instalar o servidor, os exemplos deste repositórios foram testados utilizando uma máquina virtual na ferramenta <a href="https://www.virtualbox.org/wiki/Downloads" target="_blank">VirtualBox</a> (Versão Versão 7.0.18 r162988 (Qt5.15.2) neste momento), sendo acessada utilizando SSH.<br>

Para verificar a instalação do SSH pode utilizar o comando a seguir:
```bash
ssh -V
```
O processo para criação da máquina virtual pode ser encontrado <a href="https://github.com/GlerystonMatos/docker-server/blob/main/configuracao-vm/README.md" target="_blank">aqui</a>

O processo para instalação do ambiente pode ser encontrado <a href="https://github.com/GlerystonMatos/docker-server/blob/main/comandos/AMBIENTE.md" target="_blank">aqui</a>

Uma lista com os principais comandos necessários pode ser encontrada nos seguintes links:
<a href="https://github.com/GlerystonMatos/docker-server/blob/main/comandos/WINDOWS.md" target="_blank">Windows</a>
<a href="https://github.com/GlerystonMatos/docker-server/blob/main/comandos/LINUX.md" target="_blank">Linux</a>
<a href="https://github.com/GlerystonMatos/docker-server/blob/main/comandos/DOCKER.md" target="_blank">Docker</a>

Caso queira usar o servidor para testes com projetos em desenvolvimento, podemos compartilhar as pastas dos projetos entre as máquinas, permitindo trabalhar com as imagens e containers dentro do servidor, sem a necessidade da instalação do docker na maquina host, os paços para este processo podem ser obtidos <a href="https://github.com/GlerystonMatos/docker-server/blob/main/comandos/DIRETORIO.md" target="_blank">aqui</a>

# <img alt="warning" height="20" src="./imagens/warning.png" style="margin-bottom: -9px !important"> licença
`docker-server` é um projeto livre e de código aberto licenciado sob a [MIT License](./LICENSE).