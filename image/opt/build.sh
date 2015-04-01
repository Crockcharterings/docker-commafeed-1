#!/bin/bash
apt-get install -y git-core openjdk-7-jdk maven

git clone https://github.com/Athou/commafeed.git /opt/commafeed

cd /opt/commafeed

git checkout 68f9852790211575f91cab6815445acd3e96cffd

mvn clean package

mkdir /data
