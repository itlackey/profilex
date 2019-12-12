REPO_URL="deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

if [ -z "$(apt-cache policy | grep "origin download.docker.com")" ]; then
    echo "Setting up Docker repositories"
    sudo apt-get update
    sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository $REPO_URL
fi

echo "Installing docker"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

echo "Add $USER to docker group"
sudo usermod -aG docker "$USER"
echo "You will need to logout and login again to use docker"