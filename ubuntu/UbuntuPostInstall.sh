#!/usr/bin/env bash
#
# postinstall.sh - Instalar e configurar programas no Ubuntu
#
# Website:       https://ederlan.tech
# Autor:         Ederlan Brito
#
# COMO USAR?
#   $ sudo ./postinstall.sh

set -e

## CORES
VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'

# Verificar se executando como superusuário

if [ "$EUID" -ne 0 ]; then 
  echo -e "${VERMELHO}Por favor, execute como root.${SEM_COR}"
  exit
fi

update_apt(){
  sudo apt update && sudo apt upgrade -y
}

testes_internet(){
  if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
    echo -e "${VERMELHO}[ERROR] - Seu computador não tem conexão com a Internet. Verifique a rede.${SEM_COR}"
    exit 1
  else
    echo -e "${VERDE}[INFO] - Conexão com a Internet funcionando normalmente.${SEM_COR}"
  fi
}

install_flatpaks(){
  echo -e "${VERDE}[INFO] - Instalando pacotes Flatpak${SEM_COR}"

  # Inicialização do Flatpak
  sudo apt install flatpak -y
  sudo apt install gnome-software-plugin-flatpak -y

  # Pacotes "ESSENCIAIS"
  flatpak install flathub com.spotify.Client -y
   flatpak install flathub org.telegram.desktop -y
   flatpak install flathub com.discordapp.Discord -y
  
   flatpak install flathub info.febvre.Komikku -y
   flatpak install flathub org.gustavoperedo.FontDownloader -y

   flatpak install flathub com.mongodb.Compass -y
   flatpak install flathub org.sqlitebrowser.sqlitebrowser -y
   flatpak install flathub re.sonny.Commit -y
  # flatpak install flathub com.jgraph.drawio.desktop -y
   flatpak install flathub rest.insomnia.Insomnia -y
   flatpak install flathub org.gnome.gitg -y
   flatpak install flathub com.github.git_cola.git-cola -y
   flatpak install flathub io.dbeaver.DBeaverCommunity -y
   #flatpak install flathub com.rtosta.zapzap -y

  # Pacotes adicionais
  # flatpak install flathub com.github.muriloventuroso.pdftricks -y
  # flatpak install flathub org.qbittorrent.qBittorrent -y
  flatpak install flathub com.getpostman.Postman -y
   flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y
  # flatpak install flathub cc.arduino.IDE2 -y
  # flatpak install flathub net.codeindustry.MasterPDFEditor -y
  # flatpak install flathub io.github.shiftey.Desktop -y
   flatpak install flathub io.github.thetumultuousunicornofdarkness.cpu-x -y
   flatpak install flathub dev.zed.Zed -y
  # flatpak install flathub org.filezillaproject.Filezilla -y
   flatpak install flathub com.mattjakeman.ExtensionManager -y
   flatpak install flathub com.github.tenderowl.frog -y
  # flatpak install flathub ro.go.hmlendea.DL-Desktop -y

  # Pacotes com boa expectativa
  # flatpak install flathub org.msweet.htmldoc -y
  # flatpak install flathub io.github.limads.Queries -y
  # flatpak install flathub com.longbridgeapp.LongbridgePro -y
   #flatpak install flathub com.ekonomikas.merkato -y
   #flatpak install flathub site.someones.Lonewolf -y
   #flatpak install flathub com.budgetwithbuckets.Buckets -y
  # flatpak install flathub org.jabref.jabref -y
  # flatpak install flathub br.eng.silas.qpdftools -y
  # flatpak install flathub com.invoiceninja.InvoiceNinja -y
  # flatpak install flathub com.dropbox.Client -y
  # flatpak install flathub com.adobe.Reader -y
   flatpak install flathub com.kgurgul.cpuinfo -y
  flatpak install flathub io.podman_desktop.PodmanDesktop -y
  # flatpak install flathub io.github.jean28518.Linux-Assistant -y
  flatpak install flathub org.jupyter.JupyterLab -y
  # flatpak install flathub io.gitlab.o20.word -y
   flatpak install flathub com.github.sdv43.whaler -y
   flatpak install flathub com.github.finefindus.eyedropper -y
   flatpak install flathub com.sublimetext.three -y
   flatpak install flathub org.eclipse.Java -y
  # flatpak install flathub com.ktechpit.colorwall -y
   flatpak install flathub com.github.muriloventuroso.easyssh -y
   flatpak install flathub com.github.alexkdeveloper.notepad -y
   flatpak install flathub io.httpie.Httpie -y
   flatpak install flathub com.redis.RedisInsight -y
  flatpak install flathub com.jeffser.Alpaca -y
   flatpak install flathub re.rizin.cutter -y
   flatpak install flathub net.bartkessels.getit -y
   flatpak install flathub com.her01n.BatteryInfo -y
  flatpak install flathub com.belmoussaoui.Decoder -y
}

system_clean(){
  update_apt
  flatpak update -y
  sudo apt autoremove -y
  sudo apt clean
}

# EXECUÇÃO

testes_internet
update_apt
install_flatpaks
system_clean

echo -e "${VERDE}[INFO] - Script finalizado, instalação concluída! :)${SEM_COR}"
