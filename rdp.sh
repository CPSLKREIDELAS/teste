printf "CODED BY CPSLK O BRABO ;=;\n\nINSTALANDO RDP, ISSO PODE DEMORAR ENTRE 3 E 5 MINUTOS, ENQUANTO ISSO ASSITA AQUELE PORNOZAO BOLADO" >&2
{
sudo useradd -m CPSLK
sudo adduser CPSLK sudo
echo 'CPSLK:5566' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser ALOK chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Instalado Com Sucesso " >&2 ||
printf "\nError" >&2
printf '\nEscolha Algum Terminal E Copie (RECOMENDO O Debian) https://remotedesktop.google.com/headless\n'
read -p "Cole Aqui O Escolhido: " CRP
su - CPSLK -c """$CRP"""
printf 'Criado Com Sucesso, Link Para Login: https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completado " >&2
else
    printf "\n\nError" >&2
fi
