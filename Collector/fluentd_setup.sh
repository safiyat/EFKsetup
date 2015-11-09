#!/usr/bin/env sh

# Increase the maximum number of file descriptors
echo -e "root soft nofile 65536\nroot hard nofile 65536\n* soft nofile 65536\n* hard nofile 65536" | sudo tee -a /etc/security/limits.conf > /dev/null

# Download and install fluentd (td-agent) and all its requirements
curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh

# Status check
sudo /etc/init.d/td-agent restart
sudo /etc/init.d/td-agent status

# Fix dependency errors
sudo td-agent-gem uninstall json

# Install grok parser for parsing local logs
sudo td-agent-gem install fluent-plugin-grok-parser

# Install retag plugin to support proper tagging of data
sudo td-agent-gem install fluent-plugin-retag
