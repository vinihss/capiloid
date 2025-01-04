#!/bin/bash

# Atualiza o sistema
echo "Atualizando o sistema..."
sudo pacman -Syu --noconfirm

# Instala pacotes básicos e o kernel RT
echo "Instalando o kernel de baixa latência (RT)..."
sudo pacman -S --noconfirm linux-rt linux-rt-headers

# Ferramentas para DAWs
echo "Instalando DAWs..."
sudo pacman -S --noconfirm lmms ardour qtractor

# Ferramentas de síntese vocal e manipulação de áudio
echo "Instalando ferramentas de síntese vocal..."
yay -S --noconfirm openutau sinsy cadencii festival espeak-ng praat

# Hosts e plugins
echo "Instalando hosts e plugins..."
sudo pacman -S --noconfirm carla zynaddsubfx
yay -S --noconfirm surge-xt

# Ferramentas de gerenciamento de áudio
echo "Instalando ferramentas de gerenciamento de áudio..."
sudo pacman -S --noconfirm qjackctl pulseeffects

# Configuração do JACK para baixa latência
echo "Configurando o JACK..."
sudo pacman -S --noconfirm jack2
sudo systemctl enable --now jack2

# Instalação de ferramentas adicionais
echo "Instalando ferramentas adicionais..."
yay -S --noconfirm vocalsharp

# Mensagem final
echo "Instalação concluída! Certifique-se de reiniciar o sistema para utilizar o kernel RT e configure o QjackCtl para baixa latência."
