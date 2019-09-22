#!/bin/bash

echo Installing standard software

sudo dnf update -y
sudo dnf upgrade -y

sudo dnf install zsh -y
sudo dnf install git -y
sudo dnf install node -y
sudo dnf install npm -y
sudo dnf install python3 -y
sudo dnf install rsync -y
sudo dnf install htop -y
sudo dnf install fuse-exfat -y

sudo dnf install texlive-scheme-full -y
sudo dnf install pandoc -y

sudo dnf -y install mariadb-server mariadb
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service

# fix multi media issue with firefox
sudo dnf groupupdate multimedia

sudo dnf install darktable -y

echo Configuring zsh
# Configuring zsh as default shell
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


echo Setting global git config
# Set up github configuration
git config --global user.name "jrtechs"
git config --global user.email "jeffery@jrtechs.net"
git config --global core.editor "vim"


echo Installing bash manager
cd /home/jeff

# Personal mount points used
mkdir media
mkdir public
mkdir work

mkdir scripts
cd scripts
git clone https://github.com/jrtechs/bash_manager.git


sudo dnf install sshfs -y
sudo dnf install fuse -y

cd ..

git clone https://github.com/jrtechs/dot_files.git

cp dot_files/.vimrc ./.vimrc
cp dot_files/.zshrc ./.zshrc
cp dot_files/.gitconfig ./.gitconfig
cp dot_files/.ideavimrc ./.ideavimrc
cp dot_files/.bashrc ./.bashrc


echo Enabling non-root users to mount ssh drives
# Enables non-root users to mount ssh drives
echo "user_allow_other" >> /etc/fuse.conf


echo Installing all the fun software with snap.
# On Work Stations
sudo dnf install snapd -y

## Discord
snap install discord

## Slack
snap install slack --classic

snap install spotify

snap install obs-studio

snap install vscode --classic

snap install vlc

snap install chromium
snap install mailspring

snap install gimp

## JetBrains Stuff
snap install pycharm-community --classic
snap install intellij-idea-community --classic
snap install phpstorm --classic
snap install webstorm --classic

# SSH stuff
sudo dnf install openssh-server -y
sudo systemctl start sshd.service
sudo systemctl enable sshd.service
sudo dnf -y install fail2ban
sudo systemctl start fail2ban
sudo systemctl enable fail2ban

# Desktop Environment
sudo dnf -y group install "Xfce Desktop" 

echo Restart!!

sudo reboot
