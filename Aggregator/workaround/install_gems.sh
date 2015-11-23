#! /usr/bin/env bash

#
# Only run this file if you are holding the gems locally and not installing gems from the remote server.
#
#

if [ -n "$1" ]
then
    GEM_PATH="$1"
else
    GEM_PATH=`pwd`
fi

echo "GEMPATH:-$GEM_PATH-"

if [ -s "${GEM_PATH%%/}/fluent-plugin-elasticsearch-1.1.0.gem" ]
then
    sudo td-agent-gem install fluent-plugin-elasticsearch --local --bindir $GEM_PATH
else
    echo "Gem fluent-plugin-elasticsearch not found. Not installing."
fi


if [ -f "${GEM_PATH%%/}/fluent-plugin-forest-0.3.0.gem" ]
then
    sudo td-agent-gem install fluent-plugin-forest --local --bindir $GEM_PATH
else
    echo "Gem fluent-plugin-forest not found. Not installing."
fi
