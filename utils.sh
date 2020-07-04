readonly COLOR_ERROR="\033[0;31m"
readonly COLOR_WARNING="\033[0;33m"
readonly COLOR_SUCCESS="\033[0;32m"
readonly NO_COLOR="\033[0m"

success () {
    local message="${1:-Sucess}"
    echo -e "${COLOR_SUCCESS}$message${NO_COLOR}"
}

warning () {
    local message="${1:-Warning}"
    echo -e "${COLOR_WARNING}$message${NO_COLOR}"
}

error () {
    local message="${1:-Error}"
    echo -e "${COLOR_ERROR}$message${NO_COLOR}"
}