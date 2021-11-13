java -version
sudo apt install default-jre -y  
sudo apt install openjdk-11-jre-headless -y
sudo apt install openjdk-8-jre-headless -y

wget http://maxaiot.com/src/jdk-8u202-linux-x64.tar.gz
sudo tar -xzvf jdk-8u202-linux-x64.tar.gz

sudo mv jdk1.8.0_202 /usr/lib/jvm
rm jdk-8u202-linux-x64.tar.gz
echo "#set Java environment" >> ~/.bashrc
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
source ~/.bashrc
java -version
