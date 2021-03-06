#!/usr/bin/env sh

# APT is updated by the previously run commands.
APT_UPDATED="True"

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


# Pre-configured
# NTP_INSTALLED=$(dpkg -l | grep " ntp ")
# if [ -z  "$NTP_INSTALLED" ]
# then
#     if [ -z $APT_UPDATED ]
#     then
#         sudo apt-get update
#         APT_UPDATED="True"
#     fi
#     sudo apt-get -y install ntp
# fi


# Pre-configured
# Increase the maximum number of file descriptors
# if [[ "`ulimit -n`" != 65536 ]]
# then
# echo -e "root soft nofile 65536 \n\
# root hard nofile 65536\n\
# * soft nofile 65536 \n\
# * hard nofile 65536" | sudo tee -a /etc/security/limits.conf > /dev/null
# fi
