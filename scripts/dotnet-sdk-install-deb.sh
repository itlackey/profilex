wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb 
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update
sudo mkdir -p /usr/share/dotnet
sudo tar -xvf dotnet-sdk-3.1.100-linux-x64.tar.gz -C /usr/share/dotnet/
rm dotnet-sdk-3.1.100-linux-x64.tar.gz