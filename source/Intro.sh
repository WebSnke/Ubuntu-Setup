#!/bin/bash

yellow="\e[0;33m"
reset="\e[0m"

function Intro() {
    tput reset

    echo -e "\n ${yellow}Ubuntu${reset} - Setup"
    echo -e " Version 1.0"

    echo -e "\n Press any key to continue."
    read -n 1 -r

    tput reset
}

Intro
