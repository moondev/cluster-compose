#!/bin/bash
apt-get update
apt-get install -y wget
wget http://ftp-chi.osuosl.org/pub/jenkins/war-stable/2.32.3/jenkins.war
java -jar jenkins.war