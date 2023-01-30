function usejava {
    checkExactOneInput $1 || return
    checkIfInputIsNumber $1 || return

    JAVAS=$(update-java-alternatives --list)
    TOKENS=($JAVAS)
    TOKEN_LEN=${#TOKENS[@]}
    VERSIONS=()        
    for (( c=1; c<=$TOKEN_LEN; c=c+3 ))
    do
        VER=${TOKENS[c]:0:2}
        VERSIONS+=($VER)
    done
    if ! [[ " ${VERSIONS[*]} " =~ " $1 " ]]; then
        echo "ERROR: Java version $1 is not installed..."
        return
    fi

    declare -A LOCATIONS
    for (( c=2; c<=$TOKEN_LEN; c=c+3 ))
    do        
        LOCATIONS[${TOKENS[c-1]:0:2}]=${TOKENS[c]}
    done
    echo "Setting Java version: $1, Path: ${LOCATIONS[$1]}"
    sudo update-java-alternatives --set ${LOCATIONS[$1]}    
}

function findpkg {
    echo "Searching for package $1 in apt-cache.."
    apt-cache search $1 | grep $1    
}

function installjdk {
    checkExactOneInput $1 || return
    checkIfInputIsNumber $1 || return
    sudo apt install "openjdk-$1-jdk"
}


# Helpers
function checkExactOneInput {
    if [ "$#" -ne 1 ] ; then
        echo "ERROR: Java version not provided.." >&2
        return 1
    fi
}

function checkIfInputIsNumber {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]] ; then
        echo "ERROR: Java version Not a number"
        return 1
    fi
}
