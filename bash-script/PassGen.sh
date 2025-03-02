#!/bin/bash

RED='\033[0;31m'

GREEN='\033[0;32m'

YELLOW='\033[0;33m'

RESET='\033[0m'







# Your banner text

echo -e """

########     ###     ######   ######   ######   ######## ##    ## 

##     ##   ## ##   ##    ## ##    ## ##    ##  ##       ###   ## 

##     ##  ##   ##  ##       ##       ##        ##       ####  ## 

########  ##     ##  ######   ######  ##   #### ######   ## ## ## 

##        #########       ##       ## ##    ##  ##       ##  #### 

##        ##     ## ##    ## ##    ## ##    ##  ##       ##   ### 

##        ##     ##  ######   ######   ######   ######## ##    ## 



                                                 ${RED}  By Syper-Shuvo ${RESET}   

                                                                

"""









echo -e "==================================================



           Welcome to Password World



==================================================

         "

         

read -p "Enter List Number of Password : " count

read -p  "Enter Your Password Lenght : " leng



echo -e "Work Processing........







"





echo -e "${GREEN}Password ----->${RESET}"

echo -e "${RED}"







for p in $(seq 1 $count); 

do 

openssl rand -base64 48 | cut -c1-$leng

done 



echo -e "${RESET}"






