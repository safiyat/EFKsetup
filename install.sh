sudo tar xvf elasticsearch-1.7.2.tar.gz -C /opt/
#sudo chown -R safiyat /opt/elasticsearch-1.7.2
sudo unzip -o -d /opt/elasticsearch-1.7.2/plugins/ elasticsearch-head-master.zip
if [ -d /opt/elasticsearch-1.7.2/plugins/head ]
then
    sudo rm -rf /opt/elasticsearch-1.7.2/plugins/head
fi
sudo mv -f /opt/elasticsearch-1.7.2/plugins/elasticsearch-head-master /opt/elasticsearch-1.7.2/plugins/head


sudo tar xvf kibana-4.1.2-linux-x64.tar.gz -C /opt/
#sudo chown -R safiyat /opt/kibana-4.1.2-linux-x64


unzip -o fluentd-master.zip
cd fluentd-master
bundle install
bundle exec rake build
sudo gem2.0 install pkg/fluentd-0.12.16.gem
