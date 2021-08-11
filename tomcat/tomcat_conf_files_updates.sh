#!/bin/bash
# tomcat configuration files to copy from git repo. First copy the repo
# git@github.com:ajarafaw/bookzy_webapp.git
# go to tomcat directory
yes | cp -p tomcat.service /etc/systemd/system/
yes | cp -p tomcat-users.xml /opt/tomcat/conf/
yes | cp -p server.xml /opt/tomcat/conf/
yes | cp -p context_manager.xml /opt/tomcat/webapps/manager/META-INF/context.xml
yes | cp -p context_host-manager.xml /opt/tomcat/webapps/host-manager/META-INF/context.xml
