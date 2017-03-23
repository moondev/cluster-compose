#!/bin/bash
apt-get update
apt-get install -y wget
wget http://ftp-chi.osuosl.org/pub/jenkins/war-stable/2.32.3/jenkins.war
mv jenkins.war /usr/local/tomcat/webapps/jenkins.war

catalina.sh run