FROM docker.elastic.co/logstash/logstash:7.13.4
RUN rm -f /usr/share/logstash/pipeline/logstash.conf

# COPY pipeline/ /usr/share/logstash/pipeline/
# COPY config/ /usr/share/logstash/config/

RUN gem install logstash-output-opensearch