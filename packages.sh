#!/bin/bash
source ./colors.sh
IFS=""

simple_snap_packages=(
    "cheat"
)
function install_all_snap {
    for n in ${simple_snap_packages[@]};
    do
        color_echo Green "Installing snap package $n"
        sudo snap install $n
    done
}
color_echo Yellow "Install these snap packages?(y/n) $(echo ${simple_snap_packages[*]})"
read -p "> " choice
case $choice in
    [Yy]* ) install_all_snap; break;;
    [Nn]* ) color_echo Red "Okay Exiting...";;
    * ) echo "Please answer yes or no.";;
esac



