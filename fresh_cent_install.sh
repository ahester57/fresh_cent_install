#!/bin/bash

while true; do
    read -p "Begin fresh centOS install? " answer
    case $answer in
        y|Y|yes|YES)
            break;;
        n|N|no|NO)
            exit;;
        *)
            echo "(y/n) ";;
    esac

done

ssh-keygen

sudo yum install git vim curl
sudo yum update

git clone https://github.com/ahester57/vimrc.git
git clone https://github.com/ahester57/git_bash_prompt.git
git clone https://github.com/ahester57/install_nodejs.git
git clone https://github.com/ahester57/gitconfig.git
git clone https://github.com/ahester57/python36_centos

while true; do
    read -p "Init .vimrc? " answer
    case $answer in
        y|Y|yes|YES)
            cat vimrc/.vimrc >> ~/.vimrc
            echo "done"
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done
while true; do
    read -p "Init git_bash_prompt? " answer
    case $answer in
        y|Y|yes|YES)
            cat git_bash_prompt/.bashrc >> ~/.bashrc
            echo "done"
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done
while true; do
    read -p "Init .gitconfig? " answer
    case $answer in
        y|Y|yes|YES)
            cat gitconfig/.gitconfig >> ~/.gitconfig
            echo "done"
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done
while true; do
    read -p "Install NodeJS? " answer
    case $answer in
        y|Y|yes|YES)
            ./install_nodejs/install_nodejs_centos.sh
            echo "done"
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done
while true; do
    read -p "Install Python3.6? " answer
    case $answer in
        y|Y|yes|YES)
            ./python36_centos/install_python3_centos.sh
            echo "done"
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done

while true; do
    read -p "Reboot Now? " answer
    case $answer in
        y|Y|yes|YES)
            echo "Rebooting..." &&
            sudo reboot -i NOW
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done

