#!/bin/bash

# sh add_path.sh

# Script name
SCRIPT=$(basename ${BASH_SOURCE[0]})

RESET=$(tput sgr0)
BOLD=$(tput bold)
REV=$(tput smso)
RED=$(tput setaf 1)

VERSION=1.5

# Help function
function HELP() {
    echo \\n"Help documentation for ${BOLD}${SCRIPT}${RESET}"\\n
    echo "Basic usage: ${BOLD}${SCRIPT}${RESET}"\\n
    echo "Options:"\\n
    echo "${REV}-v${RESET}   Sets the Julia version. Default is ${BOLD}1.5${RESET}."
    echo "Example: ${BOLD}${SCRIPT} -v 1.3${RESET}"\\n
    exit 1
}

while getopts :v:h flag; do
    case "${flag}" in
    v) VERSION=${OPTARG} ;;
    h) HELP ;;
    \?)
        echo \\n"${RED}The option -${BOLD}$OPTARG${RESET}${RED} is not allowed.${RESET}"
        HELP
        ;;
    esac
done

shift $((OPTIND - 1))

# echo "${VERSION}"

echo 'export PATH=/Applications/Julia-'${VERSION}'.app/Contents/Resources/julia/bin/:$PATH' >>~/.bash_profile
