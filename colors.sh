declare -A COLORS

COLORS[Color_Off]='\033[0m'       # Text Reset

COLORS[Black]='\033[0;30m'        # Black
COLORS[Red]='\033[0;31m'          # Red
COLORS[Green]='\033[0;32m'        # Green
COLORS[Yellow]='\033[0;33m'       # Yellow
COLORS[Blue]='\033[0;34m'         # Blue
COLORS[Purple]='\033[0;35m'       # Purple
COLORS[Cyan]='\033[0;36m'         # Cyan
COLORS[White]='\033[0;37m'        # White

COLORS[BBlack]='\033[1;30m'       # Black
COLORS[BRed]='\033[1;31m'         # Red
COLORS[BGreen]='\033[1;32m'       # Green
COLORS[BYellow]='\033[1;33m'      # Yellow
COLORS[BBlue]='\033[1;34m'        # Blue
COLORS[BPurple]='\033[1;35m'      # Purple
COLORS[BCyan]='\033[1;36m'        # Cyan
COLORS[BWhite]='\033[1;37m'       # White

COLORS[UBlack]='\033[4;30m'       # Black
COLORS[URed]='\033[4;31m'         # Red
COLORS[UGreen]='\033[4;32m'       # Green
COLORS[UYellow]='\033[4;33m'      # Yellow
COLORS[UBlue]='\033[4;34m'        # Blue
COLORS[UPurple]='\033[4;35m'      # Purple
COLORS[UCyan]='\033[4;36m'        # Cyan
COLORS[UWhite]='\033[4;37m'       # White

COLORS[On_Black]='\033[40m'       # Black
COLORS[On_Red]='\033[41m'         # Red
COLORS[On_Green]='\033[42m'       # Green
COLORS[On_Yellow]='\033[43m'      # Yellow
COLORS[On_Blue]='\033[44m'        # Blue
COLORS[On_Purple]='\033[45m'      # Purple
COLORS[On_Cyan]='\033[46m'        # Cyan
COLORS[On_White]='\033[47m'       # White

COLORS[IBlack]='\033[0;90m'       # Black
COLORS[IRed]='\033[0;91m'         # Red
COLORS[IGreen]='\033[0;92m'       # Green
COLORS[IYellow]='\033[0;93m'      # Yellow
COLORS[IBlue]='\033[0;94m'        # Blue
COLORS[IPurple]='\033[0;95m'      # Purple
COLORS[ICyan]='\033[0;96m'        # Cyan
COLORS[IWhite]='\033[0;97m'       # White

COLORS[BIBlack]='\033[1;90m'      # Black
COLORS[BIRed]='\033[1;91m'        # Red
COLORS[BIGreen]='\033[1;92m'      # Green
COLORS[BIYellow]='\033[1;93m'     # Yellow
COLORS[BIBlue]='\033[1;94m'       # Blue
COLORS[BIPurple]='\033[1;95m'     # Purple
COLORS[BICyan]='\033[1;96m'       # Cyan
COLORS[BIWhite]='\033[1;97m'      # White

COLORS[On_IBlack]='\033[0;100m'   # Black
COLORS[On_IRed]='\033[0;101m'     # Red
COLORS[On_IGreen]='\033[0;102m'   # Green
COLORS[On_IYellow]='\033[0;103m'  # Yellow
COLORS[On_IBlue]='\033[0;104m'    # Blue
COLORS[On_IPurple]='\033[0;105m'  # Purple
COLORS[On_ICyan]='\033[0;106m'    # Cyan
COLORS[On_IWhite]='\033[0;107m'   # White

# Usage
# source ./colors.sh
# color_echo Red "prompt"
function color_echo {
    echo -e "${COLORS[$1]}$2${COLORS[Color_Off]}"
}

