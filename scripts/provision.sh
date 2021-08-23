#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
  /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
# Añade openjdk-8 para poder ejecutar jenkins y openjdk-16 para compilar la app en Java
sudo apt-get install -y openjdk-8-jdk openjdk-16-jdk
# Selecciona Java 8 por defecto, que es la versión que utiliza Jenkins
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

# Instala Jenkins
sudo apt-get install -y jenkins
