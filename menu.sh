#!/bin/bash
clear
echo -e "\e[1;32m"
echo "  __  __ ______ _____         ______ ____  _____  _    _ __  __ "
echo " |  \/  |  ____|  __ \       |  ____/ __ \|  __ \| |  | |  \/  |"
echo " | \  / | |__  | |  | |______| |__ | |  | | |__) | |  | | \  / |"
echo " | |\/| |  __| | |  | |______|  __|| |  | |  _  /| |  | | |\/| |"
echo " | |  | | |____| |__| |      | |   | |__| | | \ \| |__| | |  | |"
echo " |_|  |_|______|_____/       |_|    \____/|_|  \_\\____/|_|  |_|"
echo -e "\e[1;37m"
echo "            Created By : Med Rayen Bouazizi"
echo "------------------------------------------------------------"
echo -e "\e[1;33m[!] Lancement du serveur Med-Forum sur le port 8080...\e[0m"

# Vérification de Python
if ! command -v python &> /dev/null; then
    pkg install python -y
fi

echo -e "\e[1;32m[+] Serveur ACTIF sur http://127.0.0.1:8080\e[0m"
echo -e "\e[1;31m[!] Appuie sur CTRL+C pour arrêter le serveur\e[0m"
echo ""

python -m http.server 8080

