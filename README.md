# Elasticsearch, Fluentd and Kibana installation scripts 

This repo contains scripts to setup a working EFK stack on two kind of nodes.
- **Collector node:**
Node to collect, parse and forward all the logs of the services running on `this` node. Forwarding is done to the fluentd-agent running on aggregator.
- **Aggregator node:**
Node to receive and index parsed and sturctured logs in elasticsearch from the fluentd agent running on collector nodes. Kibana uses the data from elasticsearch and visualizes it (beautifully) on the web browser.

### To do
- Fix the analyzed string issue in kibana. Especially for the host names. 
- Read and implement [this](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-service.html).
