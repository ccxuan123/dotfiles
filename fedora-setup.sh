#!/bin/bash

enhance_dnf_setting () {
    local DNF_CFG_PATH=/etc/dnf/dnf.conf
    local dnf_settings=(\
        fastestmirror=True\
        max_parallel_downloads=10\
        defaultyes=True\
        keepcache=True\
    )
    for dnf_setting in ${dnf_settings[@]}; do
        if ! grep -q $dnf_setting $DNF_CFG_PATH ; then
            sudo sh -c "echo $dnf_setting >> $DNF_CFG_PATH"
        fi
    done
}

echo "CX Fedora Setup script"
PS3='Please enter your choice: '
options=( \
    "Enhance dnf setting" \
    "System update with dnf" \
    "Enable free and nonfree RPM fusion repo" \
    "Enable flathub repo" \
    "Quit" \
)

while true; do
    select opt in "${options[@]}"
    do
        case $opt in
            "Enhance dnf setting")
                echo "Editting dnf cfg file..."
                enhance_dnf_setting
                break
                ;;
            "System update with dnf")
                echo "Updating system..."
                sudo dnf update -y
                break
                ;;
            "Enable free and nonfree RPM fusion repo")
                echo "Enabling RPM fusion repo"
                sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y 
                break
                ;;
            "Enable flathub repo")
                echo "Enabling flathub repo"
                flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
                break
                ;;
            "Quit")
                break 2
                ;;
            *) echo "invalid option $REPLY" 
                break;;
        esac
    done
done
