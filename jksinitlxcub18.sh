sudo apt install software-properties-common apt-transport-https -y
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt install openjdk-8-jdk -y
useradd -m -s /bin/bash jenkins
passwd jenkins
