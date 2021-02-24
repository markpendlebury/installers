# Install some required packages first
sudo apt update -y
sudo apt install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Get the Docker signing key for packages
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

# Add the Docker official repos
echo "deb [arch=armhf] https://download.docker.com/linux/raspbian stretch edge" | sudo tee /etc/apt/sources.list.d/docker.list

# Install Docker
sudo apt update -y
sudo apt install docker-ce -y


#Install Pip
sudo apt update -y
sudo apt install -y python python-pip

# Install Docker Compose from pip
sudo pip install docker-compose
