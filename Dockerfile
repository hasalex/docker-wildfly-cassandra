FROM wfdemo/wildfly-core
MAINTAINER Alexis Hassler <alexis@sewatech.org>

RUN curl -Ls "https://dl.bintray.com/wfdemo/wildfly/wildfly-cassandra-module.zip" -o wildfly-cassandra-module.zip && \
    unzip wildfly-cassandra-module.zip && rm wildfly-cassandra-module.zip

COPY standalone-cassandra.sh /wildfly-core/bin/
COPY desc.txt /

EXPOSE 9990 9042 9160

ENTRYPOINT []
CMD ["/wildfly-core/bin/standalone-cassandra.sh"]
