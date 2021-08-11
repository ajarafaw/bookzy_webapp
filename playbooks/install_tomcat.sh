#!/bin/bash

#Install tomcat
yum install java git -y
groupadd tomcat
useradd -s /bin/false -g tomcat -d /home/tomcat tomcat
cd /tmp
curl -O https://mirrors.ocf.berkeley.edu/apache/tomcat/tomcat-8/v8.5.69/bin/apache-tomcat-8.5.69.tar.gz
mkdir /opt/tomcat
tar -zxvf apache-tomcat-8.5.69.tar.gz -C /opt/tomcat --strip-components=1
chgrp -R tomcat /opt/tomcat;chmod -R g+r conf;chmod g+x conf;chown -R tomcat /opt/tomcat;chown -R tomcat webapps/ work/ temp/ logs/
yum update -y
