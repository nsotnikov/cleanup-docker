#!/bin/sh
#
# To start the script just execute following commant
#   'sh <(curl -sL https://git.io/vDSx7)'

clear
printf "Docker Cleanup Shell Script \n\n"
printf "WARNING! WARNING!! WARNING!!!\n"
printf "These script will STOP and REMOVE ALL docker containers, images and volumes!\n\n"

do_clear() {
while true; do
    read -p "Do you want to continue cleaning? (yes/no): " yn
    case $yn in
        [Yy]* ) sudo docker stop $(sudo docker ps -a -q);
                sudo docker rm $(sudo docker ps -a -q);
                sudo docker rmi -f $(sudo docker images -q);
                sudo docker volume rm $(sudo docker volume ls -q);
                printf "\n\n\nCleaning completed. Thank you!\n\n\n";
                 break;;
        [Nn]* ) printf "\nScript cancelled\n\n";exit;;
        * )     echo "Please answer yes or no.";;
    esac
 done
}
# wrapped up in a function to protect half the file during "curl | sh"
do_clear







########### TODO 
# echo "Removing exited docker containers..."
# docker ps -a -f status=exited -q | xargs -r docker rm -v
# echo "Removing dangling images..."
# docker images --no-trunc -q -f dangling=true | xargs -r docker rmi
# echo "Removing untagged images..."
# docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
# echo "Removing dangling volumes..."
# docker volume ls -qf dangling=true | xargs -r docker volume rm


################# TODO
#
# while :
# do
# 	clear
#         # display menu
#         echo "Server Name - $(hostname)"
# 	echo "-------------------------------"
# 	echo "     M A I N - M E N U"
# 	echo "-------------------------------"
# 	echo "1. Display date and time."
# 	echo "2. Display what users are doing."
# 	echo "3. Display network connections."
# 	echo "4. Exit"
#         # get input from the user 
# 	read -p "Enter your choice [ 1 -4 ] " choice
#         # make decision using case..in..esac 
# 	case $choice in
# 		1)
# 			echo "Today is $(date)"
# 			read -p "Press [Enter] key to continue..." readEnterKey
# 			;;
# 		2) 
# 			w	
# 			read -p "Press [Enter] key to continue..." readEnterKey
# 			;;
# 		3)
# 			netstat -nat
# 			read -p "Press [Enter] key to continue..." readEnterKey
# 			;;
# 		4)
# 			echo "Bye!"
# 			exit 0
# 			;;
# 		*)
# 			echo "Error: Invalid option..."	
# 			read -p "Press [Enter] key to continue..." readEnterKey
# 			;;
# 	esac		
				
# done
