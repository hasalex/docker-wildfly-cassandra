FROM hasalex/wildfly-core
MAINTAINER Alexis Hassler <alexis@sewatech.org>

ENV WILDFLY_CORE_VERSION 1.0.0.Beta1-SNAPSHOT

RUN curl -Ls https://bintray.com/artifact/download/hasalex/generic/wildfly-cassandra-module.zip -o wildfly-cassandra-module.zip && \
    unzip wildfly-cassandra-module.zip -d /wildfly-core-$WILDFLY_CORE_VERSION && rm wildfly-cassandra-module.zip

COPY standalone-cassandra.xml /wildfly-core-$WILDFLY_CORE_VERSION/standalone/configuration/
COPY module.xml /wildfly-core-$WILDFLY_CORE_VERSION/modules/system/layers/base/org/wildfly/extension/cassandra/main/

EXPOSE 9990

ENTRYPOINT ["/wildfly-core-1.0.0.Beta1-SNAPSHOT/bin/standalone.sh"]
CMD ["-c", "standalone-cassandra.xml", "-bmanagement", "0.0.0.0"]

