#! /bin/bash


echo "Add Docker's official GPG key:"
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "Add the repository to Apt sources:"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# read -n 1 -p "All good? (Y/n)" $yn

# # if [[$yn != "y"]] 
# # then [[$yn != "Y"]] 
# # then [[$yn != ""]] 
# # then exit 1
# # fi

#echo "continuing"

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#read -n 1 -p "All good? (Y/n)" $yn

# if [[$yn != "y"]] 
# then [[$yn != "Y"]] 
# then [[$yn != ""]] 
# then exit 1
# fi

#echo "continuing"
#echo "testing docker..."

sudo docker run hello-world
