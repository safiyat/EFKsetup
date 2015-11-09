#!/usr/bin/env sh

# Increase the maximum number of file descriptors
echo -e "root soft nofile 65536\nroot hard nofile 65536\n* soft nofile 65536\n* hard nofile 65536" | sudo tee -a /etc/security/limits.conf > /dev/null

# Download and install td-agent
curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh


sudo /etc/init.d/td-agent restart
sudo /etc/init.d/td-agent status

# Fix the dependency error
sudo td-agent-gem uninstall json

# Install plugin for elasticsearch
sudo td-agent-gem install fluent-plugin-elasticsearch

# Install plugin for forest (used to dynamically pass index name and type name to elasticsearch plugin)
sudo td-agent-gem install fluent-plugin-forest
