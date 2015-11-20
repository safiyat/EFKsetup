#! /usr/bin/env bash

#
# Only run this file if you are holding the gems locally and not installing gems from the remote server.
#
#

if [ -n "$1" ]
then
    GEM_PATH="$1"
else
    GEM_PATH="~/gems"
fi

echo "GEMPATH:-$GEM_PATH-"

if [ -s "${GEM_PATH%%/}/fluent-plugin-retag-0.0.1.gem" ]
then
    sudo td-agent-gem install fluent-plugin-retag --local --bindir $GEM_PATH
else
    echo "Gem fluent-plugin-retag not found. Not installing."
fi


if [ -f "${GEM_PATH%%/}/fluent-plugin-grok-parser-0.0.2.gem" ]
then
    sudo td-agent-gem install fluent-plugin-grok-parser --local --bindir $GEM_PATH
else
    echo "Gem fluent-plugin-grok-parser not found. Not installing."
fi
