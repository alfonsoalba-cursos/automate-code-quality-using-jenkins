#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
  /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get upgrade -y
# Add openjdk-11 to tun jenkikns and openjdk-16 to be able to compile our java application
apt-get install -y openjdk-11-jdk openjdk-16-jdk
# Set Java 11 as the default java version, since this is the recommended version to run Jenkins
update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/jre/bin/java

# Install Jenkins
apt-get install -y jenkins

# Clone repositories
sudo -u vagrant mkdir /home/vagrant/teacher_repositories
sudo -u vagrant git clone https://github.com/alfonsoalba-cursos/armstrong-number-c /home/vagrant/teacher_repositories/armstrong-number-c
sudo -u vagrant git clone https://github.com/alfonsoalba-cursos/armstrong-number-java /home/vagrant/teacher_repositories/armstrong-number-java
