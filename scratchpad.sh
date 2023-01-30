#!/bin/bash
source ./colors.sh
IFS=""

function update_apt {
    echo "Updating apt cache..."
    sudo apt update > /dev/null
    echo "Update cache done..."
}
# update_apt



