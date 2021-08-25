#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
  /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get upgrade -y
# Añade openjdk-8 para poder ejecutar jenkins y openjdk-16 para compilar la app en Java
apt-get install -y openjdk-8-jdk openjdk-16-jdk
# Selecciona Java 8 por defecto, que es la versión que utiliza Jenkins
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

# Instala Jenkins
apt-get install -y jenkins

# Clone repositoriess
git clone https://github.com/alfonsoalba-cursos/armstrong-number-c
git clone https://github.com/alfonsoalba-cursos/armstrong-number-java
