#!/bin/bash

echo -e "\033[1;32m                                                           "
echo -e "@@@@@@@   @@@@@@    @@@@@@                                 "
echo -e "@@@@@@@  @@@@@@@@  @@@@@@@@                                "
echo -e "  @@!    @@!  @@@  @@!  @@@                                "
echo -e "  !@!    !@!  @!@  !@!  @!@                                "
echo -e "  @!!    @!@!@!@!  @!@  !@!                                "
echo -e "  !!!    !!!@!!!!  !@!  !!!                                "
echo -e "  !!:    !!:  !!!  !!:!!:!:                                "
echo -e "  :!:    :!:  !:!  :!: :!:                                 "
echo -e "   ::    ::   :::  ::::: :!                                "
echo -e "   :      :   : :   : :  :::                               "
echo -e "@@@@@@@    @@@@@@    @@@@@@  @@@@@@@   @@@@@@   @@@  @@@   "
echo -e "@@@@@@@@  @@@@@@@@  @@@@@@@  @@@@@@@  @@@@@@@@  @@@@ @@@   "
echo -e "@@!  @@@  @@!  @@@  !@@        @@!    @@!  @@@  @@!@!@@@   "
echo -e "!@   @!@  !@!  @!@  !@!        !@!    !@!  @!@  !@!!@!@!   "
echo -e "@!@!@!@   @!@  !@!  !!@@!!     @!!    @!@!@!@!  @!@ !!@!   "
echo -e "!!!@!!!!  !@!  !!!   !!@!!!    !!!    !!!@!!!!  !@!  !!!   "
echo -e "!!:  !!!  !!:  !!!       !:!   !!:    !!:  !!!  !!:  !!!   "
echo -e ":!:  !:!  :!:  !:!      !:!    :!:    :!:  !:!  :!:  !:!   "
echo -e " :: ::::  ::::: ::  :::: ::     ::    ::   :::   ::   ::   "
echo -e ":: : ::    : :  :   :: : :      :      :   : :  ::    :    "
echo -e "                                                           \033[0m"

echo -e "\033[1;33m=========================================================="
echo -e "Created by Parsa in OPIran club https://t.me/OPIranClub"
echo -e "Love Iran :)"



GREEN="\e[32m"
BOLD_GREEN="\e[1;32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
MAGENTA="\e[35m"
WHITE="\e[37m"
RESET="\e[0m"

draw_green_line() {
  echo -e "${GREEN}+--------------------------------------------------------+${RESET}"
}


print_menu() {
  draw_green_line
  echo -e "${GREEN}|${RESET}              ${BOLD_GREEN}TAQ-BOSTAN Main Menu${RESET}                 ${GREEN}|${RESET}"
  draw_green_line
  echo -e "${GREEN}|${RESET} ${BLUE}1)${RESET} Create best and safest tunnel                  ${GREEN}|${RESET}"
  echo -e "${GREEN}|${RESET} ${YELLOW}2)${RESET} Create local IPv6 with Sit                      ${GREEN}|${RESET}"
  echo -e "${GREEN}|${RESET} ${MAGENTA}3)${RESET} Create local IPv6 with Wireguard                ${GREEN}|${RESET}"
  draw_green_line
}

execute_option() {
  local choice="$1"
  case "$choice" in
    1)
      echo -e "${CYAN}Executing: Create best and safest tunnel...${RESET}"
      sudo bash <(curl -Ls https://raw.githubusercontent.com/ParsaKSH/TAQ-BOSTAN/main/hysteria.sh)
      ;;
    2)
      echo -e "${CYAN}Executing: Create local IPv6 with Sit...${RESET}"
      sudo bash <(curl -Ls https://raw.githubusercontent.com/ParsaKSH/Create-Private-IPv6-with-Sit/main/script.sh)
      ;;
    3)
      echo -e "${CYAN}Executing: Create local IPv6 with Wireguard...${RESET}"
      sudo bash <(curl -Ls https://raw.githubusercontent.com/ParsaKSH/TAQ-BOSTAN/main/wireguard.sh)
      ;;
    *)
      echo -e "${RED}Invalid option. Exiting...${RESET}"
      exit 1
      ;;
  esac
}

clear
print_menu


read -p "$(echo -e "${WHITE}Select an option [1-3]: ${RESET}")" user_choice


execute_option "$user_choice"

echo -e "==========================================================\033[0m"
