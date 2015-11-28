#! /usr/bin/env bash

################################################################################
#                                                                              #
#                        Install gems from local gem files.                    #
#                                                                              #
#      script: install_gems.sh                                                 #
#      author: Md Safiyat Reza (md.reza@snapdeal.com)                          #
#                                                                              #
#      A script to install ruby gems from local gem files, till the local gem  #
#  server has not been set up.                                                 #
#      Designed to be run using ansible or some other wrapper. Please cd into  #
#  the directory containing the gems before running the script.                #
#                                                                              #
################################################################################

sudo td-agent-gem install --force --local fluent-plugin-forest-0.3.0.gem

sudo td-agent-gem install --force --local excon-0.45.4.gem
sudo td-agent-gem install --force --local elasticsearch-api-1.0.14.gem
sudo td-agent-gem install --force --local multipart-post-2.0.0.gem
sudo td-agent-gem install --force --local faraday-0.9.2.gem
sudo td-agent-gem install --force --local elasticsearch-transport-1.0.14.gem
sudo td-agent-gem install --force --local elasticsearch-1.0.14.gem
sudo td-agent-gem install --force --local fluent-plugin-elasticsearch-1.1.0.gem

