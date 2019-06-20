#!/bin/bash


echo Installing standard software

# Change to root user
su

dnf update
dnf upgrade

dnf install zsh
dnf install git
dnf install node
dnf install npm
dnf install python3
dnf install rsync
dnf install htop

dnf install darktable

echo Configuring zsh
# Configuring zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


echo Setting global git config
# Set up github configuration
git config --global user.name "jrtechs"
git config --global user.email "jeffery@jrtechs.net"



echo Installing bash manager
cd /home/jeff

mkdir media
mkdir public
mkdir work

mkdir scripts
cd scripts
git clone https://github.com/jrtechs/bash_manager.git

chsh -s $(which zsh)
su jeff
chsh -s $(which zsh)
su


dnf install sshfs
dnf install fuse

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
dnf install snapd

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

echo Restart!!

reboot
