#!/usr/bin/env sh

# Extract elasticsearch
sudo tar xvf elasticsearch-1.7.2.tar.gz -C /opt/

# Install the head plugin to elasticsearch
sudo unzip -o -d /opt/elasticsearch-1.7.2/plugins/ elasticsearch-head-master.zip
if [ -d /opt/elasticsearch-1.7.2/plugins/head ]
then
    sudo rm -rf /opt/elasticsearch-1.7.2/plugins/head
fi
sudo mv -f /opt/elasticsearch-1.7.2/plugins/elasticsearch-head-master /opt/elasticsearch-1.7.2/plugins/head


# Extract kibana
sudo tar xvf kibana-4.1.2-linux-x64.tar.gz -C /opt/
