#!/bin/bash

# Installing git, Jenkins and Maven
yum install git java -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
systemctl start jenkins
amazon-linux-extras install ansible2 -y
wget https://apache.claz.org/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz
tar -xvf apache-maven-3.8.1-bin.tar.gz
mv apache-maven-3.8.1 /usr/share/
yum update -y
reboot
