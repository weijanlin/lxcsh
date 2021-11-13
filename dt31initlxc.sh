sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y wget
sudo apt-get install -y systemd
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y apt-transport-https
sudo apt-get install -y dotnet-sdk-3.1
sudo apt-get install -y vim curl git
