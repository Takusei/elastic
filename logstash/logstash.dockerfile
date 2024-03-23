FROM docker.elastic.co/logstash/logstash:8.12.2

RUN rm -f /usr/share/logstash/pipeline/logstash.conf 
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-mongodb