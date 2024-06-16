# Compartilhar um diretório entre as máquinas

Para compartilhar um diretório entre uma máquina Windows (host) e um servidor Linux (guest) rodando em uma VM no VirtualBox, você pode seguir os passos abaixo

# 1 - Instalação do Guest Additions

No servidor Linux (guest), certifique-se de que o Guest Additions do VirtualBox esteja instalado.

Os Guest Additions fornecem recursos adicionais e melhor integração entre o host e o guest.

No menu do VirtualBox, selecione a opção "Devices" > "Insert Guest Additions CD Image...". Isso montará um CD virtual dentro do guest Linux.

No terminal do Linux, monte o CD e execute o script de instalação.

Por exemplo:

```bash
sudo mount /dev/cdrom /mnt
```

```bash
cd /mnt
```

```bash
sudo ./VBoxLinuxAdditions.run
```

# 2 - Configuração da Compartilhamento de Pastas

No VirtualBox, com a VM desligada, vá para as configurações da VM.

Em "Settings" > "Shared Folders", adicione um novo compartilhamento:

Escolha o diretório do host que deseja compartilhar.

Dê um nome ao compartilhamento.

Marque as opções conforme necessário, como "Auto-mount" e "Make Permanent".

Clique em "OK" para salvar as configurações.

# 3 - Montagem do Compartilhamento no Linux

No Linux (guest), crie um diretório onde deseja montar o compartilhamento, por exemplo:

```bash
sudo mkdir /mnt/shared
```

Monte o compartilhamento usando o comando mount:

```bash
sudo mount -t vboxsf <nome_do_compartilhamento> /mnt/shared
```

Substitua <nome_do_compartilhamento> pelo nome que você definiu no VirtualBox. (No meu caso usei Shared)

```bash
sudo mount -t vboxsf Shared /mnt/shared
```

Verifique se o compartilhamento foi montado corretamente:

```bash
ls /mnt/shared
```

Você deve ver os arquivos e pastas compartilhados do host Windows.