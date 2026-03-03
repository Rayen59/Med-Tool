#!/bin/bash

# Zphisher style colors
G='\033[0;32m' # Green
R='\033[0;31m' # Red
Y='\033[1;33m' # Yellow
B='\033[0;34m' # Blue
C='\033[0;36m' # Cyan
W='\033[1;37m' # White
NC='\033[0m'    # No Color

# Banner style like Zphisher
banner() {
    clear
    echo -e "${C}  __  __          _   _____                             "
    echo -e " |  \/  | ___  __| | |  __ \                            "
    echo -e " | \  / |/ _ \/ _\` | | |__) |__ _ _   _  ___ _ __      "
    echo -e " | |\/| |  __/ (_| | |  _  // _\` | | | |/ _ \ '_ \     "
    echo -e " |_|  |_|\___|\__,_| |_| \_\__,_|_| |_|\___/_| |_|     "
    echo -e "                                                        "
    echo -e "       ${W}[${G}-${W}]${C} Created By : ${Y}Med Rayen Bouazizi${C} ${W}[${G}-${W}]"
    echo -e "       ${W}[${G}-${W}]${C} Version    : ${G}1.0${C}                   "
    echo -e "${NC}"
}

# Menu options
menu() {
    echo -e "${W} [${G}01${W}]${G} Create Telegram Video Bot"
    echo -e "${W} [${G}02${W}]${G} Install Dev Tools"
    echo -e "${W} [${G}03${W}]${G} Contact me on WhatsApp"
    echo -e "${W} [${G}00${W}]${G} Exit"
    echo ""
    read -p $'\e[1;37m [\e[0;32m*\e[1;37m] Choose an option: \e[0;32m' choice
}

# Logic
while true; do
    banner
    menu
    case $choice in
        1|01)
            echo -e "\n${W} [${G}*${W}] Starting Bot Creator..."
            sleep 3
            ;;
        2|02)
            echo -e "\n${W} [${G}*${W}] Updating Packages..."
            pkg update && pkg upgrade -y
            sleep 2
            ;;
        3|03)
            echo -e "\n${W} [${G}*${W}] Redirecting to WhatsApp..."
            termux-open-url "https://wa.me/21696160285"
            sleep 2
            ;;
        0|00)
            echo -e "\n${W} [${R}!${W}] Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo -e "\n${W} [${R}!${W}] Invalid Option!"
            sleep 2
            ;;
    esac
done

