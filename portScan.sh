#!/bin/bash
# colors

    blueColor="\e[0;34m\033[1m"
    redColor="\e[0;31m\033[1m"
    endColor="\033[0m\e[0m"

# banner

 #####   #####  ######  ######   #####  ######  #    #
#     # #     # #     # #     # #     # #     # #   #
#             # #     # #     #       # #     # #  #
 #####   #####  ######  ######   #####  ######  ###
      #       # #   #   #     #       # #   #   #  #
#     # #     # #    #  #     # #     # #    #  #   #
 #####   #####  #     # ######   #####  #     # #    # 




# ./portScan.sh <ip-address>

if [ $1 ]; then 
      ip_address=$1
      echo -e ""
      for port in $(seq 1 65535); do
          sleep 0.003; timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$port" 2> /dev/null && echo -e "${blueColor}[*] Port $port is open${endColor}" &
       done; wait
else
    echo -e "\n[*] Uso: ./portScan.sh <ip-address>\n"
    exit 1
fi
