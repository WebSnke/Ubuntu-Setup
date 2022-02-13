#!/bin/bash

green="\e[0;92m"
reset="\e[0m"

InstallAppList=(
    "htop"
    "tmux"
    "gimp"
    "steam"
    "atom"
    "vim"
    "blender"
    "lm-sensors"
    "neofetch"
    "gparted"
    "gnome-tweaks"
    "grub-customizer"
)

function InstallAppFunction() {
    for App in ${InstallAppList[@]}
    do
        echo -e "\n Would you like to install ${green}$App${reset} ? (y/n)"
        read -n 1 -s Input
        if [[ $Input == "y" ]]; then
            echo -e " Yes.\n"
            sudo apt install $App
        else
            echo -e " No."
        fi
    done

    echo
}

InstallAppFunction
