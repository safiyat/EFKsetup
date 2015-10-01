unzip fluentd-master.zip

cd fluentd-master

bundle install

bundle exec rake build

sudo gem install pkg/fluentd-0.12.16.gem
