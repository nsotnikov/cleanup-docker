#!/bin/sh
#
# To start the script just execute following commant
#   'sh <(curl -sL https://git.io/vDSx7)'

clear
printf "Docker Cleanup Shell Script \n\n"
printf "WARNING! WARNING!! WARNING!!!\n"
printf "These script will STOP and REMOVE ALL docker containers, images and volumes!\n\n"

# wrapped up in a function to protect half the file during "curl | sh"
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
do_clear



# TODO 
# echo "Removing exited docker containers..."
# docker ps -a -f status=exited -q | xargs -r docker rm -v
# echo "Removing dangling images..."
# docker images --no-trunc -q -f dangling=true | xargs -r docker rmi
# echo "Removing untagged images..."
# docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
# echo "Removing dangling volumes..."
# docker volume ls -qf dangling=true | xargs -r docker volume rm