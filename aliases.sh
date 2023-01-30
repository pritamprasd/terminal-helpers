#!/bin/bash
aliases=(
    "c=clear" 
    "g='git status'" 
    "d=docker"
    "dc=docker-compose"
    "k=kubectl"
    "s='service --status-all | grep '"
    "listjava='update-java-alternatives --list'"
)
IFS=""

for n in ${aliases[@]};
do
    myalias="alias $n"
    com=$(grep -qxF $myalias $HOME/.bashrc) || $(echo $myalias >> $HOME/.bashrc)
    $com
done

( IFS=$'\n'; echo "Setting up below aliases..."; echo "${aliases[*]}"; echo )
