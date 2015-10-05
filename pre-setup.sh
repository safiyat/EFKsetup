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

#RUBY_INSTALLED=$(dpkg -l | grep " ruby2.0 ")
#if [ -z  "$RUBY_INSTALLED" ]
#then
#    if [ -z $APT_UPDATED ]
#    then
#        sudo apt-get update
#        APT_UPDATED="True"
#    fi
#    sudo apt-get -y install ruby2.0
#fi

#BUNDLER_INSTALLED=$(dpkg -l | grep " bundler ")
#if [ -z  "$BUNDLER_INSTALLED" ]
#then
#    if [ -z $BUNDLER_UPDATED ]
#    then
#        sudo apt-get update
#        APT_UPDATED="True"
#    fi
#    sudo apt-get -y install bundler
#fi

#NTP_INSTALLED=$(dpkg -l | grep " ntp ")
#if [ -z  "$NTP_INSTALLED" ]
#then
#    if [ -z $APT_UPDATED ]
#    then
#        sudo apt-get update
#        APT_UPDATED="True"
#    fi
#    sudo apt-get -y install ntp
#fi
