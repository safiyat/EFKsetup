#!/usr/bin/env sh


# Assuming APT repo is updated
APT_UPDATED="True"

# Install curl to download packages
CURL_INSTALLED=$(dpkg -l | grep " curl ")
if [ -z  "$CURL_INSTALLED" ]
then
    if [ -z $APT_UPDATED ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install curl
fi

# Install ntp for fluentd
NTP_INSTALLED=$(dpkg -l | grep " ntp ")
if [ -z  "$NTP_INSTALLED" ]
then
    if [ -z $APT_UPDATED ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install ntp
fi


# Install java for elasticsearch
JAVA_INSTALLED=$(which java)
if [ -z  "$JAVA_INSTALLED" ]
then
    if [ -z "$APT_UPDATED" ]
    then
        sudo apt-get update
        APT_UPDATED="True"
    fi
    sudo apt-get -y install openjdk-7-jre
fi
