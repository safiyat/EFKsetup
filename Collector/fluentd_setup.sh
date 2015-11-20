#!/usr/bin/env sh

# Download and install fluentd (td-agent) and all its requirements
# curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh

curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add -
echo "deb [arch=amd64] http://packages.treasuredata.com/2/ubuntu/trusty/ trusty contrib" > /etc/apt/sources.list.d/treasure-data.list
apt-get update
apt-get install -y --force-yes td-agent

# Status check
sudo /etc/init.d/td-agent restart
sudo /etc/init.d/td-agent status

# Fix dependency errors
sudo td-agent-gem uninstall json

# Install grok parser for parsing local logs
sudo td-agent-gem install fluent-plugin-grok-parser

# Install retag plugin to support proper tagging of data
sudo td-agent-gem install fluent-plugin-retag
