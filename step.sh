#!/bin/bash

echo "Installing OpenJDK 13"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-13-jdk

echo "New Java version"
which java
java -version
