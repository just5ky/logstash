FROM docker.elastic.co/logstash/logstash:8.10.4
RUN rm -f /usr/share/logstash/pipeline/logstash.conf

# COPY pipeline/ /usr/share/logstash/pipeline/
# COPY config/ /usr/share/logstash/config/

RUN /usr/share/logstash/bin/ruby -S gem install logstash-output-opensearch
RUN bin/logstash-plugin install --no-verify
