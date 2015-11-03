# Increase the maximum number of file descriptors
echo -e "root soft nofile 65536\nroot hard nofile 65536\n* soft nofile 65536\n* hard nofile 65536" | sudo tee -a /etc/security/limits.conf > /dev/null

curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh


sudo /etc/init.d/td-agent restart
sudo /etc/init.d/td-agent status

sudo td-agent-gem uninstall json
sudo td-agent-gem install fluent-plugin-elasticsearch
sudo td-agent-gem install fluent-plugin-forest
#sudo apt-get -y install ruby2.0 ruby2.0-dev

#sdo gem install fluentd --no-ri --no-rdoc

#fluentd --setup ./fluent
