#!/bin/bash

echo "Installing OpenJDK 13"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-13-jdk
sudo update-java-alternatives --jre-headless --set java-1.13.0-openjdk-amd64
sudo update-alternatives --set javac /usr/lib/jvm/java-13-openjdk-amd64/bin/javac
sudo update-alternatives --set java /usr/lib/jvm/java-13-openjdk-amd64/bin/java

echo "New Java version"
which java
java -version
