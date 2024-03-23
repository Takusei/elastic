FROM docker.elastic.co/logstash/logstash:8.12.2

RUN rm -f /usr/share/logstash/pipeline/logstash.conf && \
  bin/logstash-plugin install logstash-output-mongodb