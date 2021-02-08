#!/bin/bash

echo "Installing OpenJDK 13"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-13-jdk

echo "Force updating the locations of java"
sudo update-java-alternatives --jre-headless --set java-1.13.0-openjdk-amd64
sudo update-alternatives --set javac /usr/lib/jvm/java-13-openjdk-amd64/bin/javac
sudo update-alternatives --set java /usr/lib/jvm/java-13-openjdk-amd64/bin/java

echo "Setting JAVA_HOME env variable"
export JAVA_HOME='/usr/lib/jvm/java-13-openjdk-amd64'
envman add --key JAVA_HOME --value '/usr/lib/jvm/java-13-openjdk-amd64'

echo "New Java version"
which java
java -version
echo $JAVA_HOME
