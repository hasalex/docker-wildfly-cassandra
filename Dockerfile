FROM hasalex/wildfly-core:1.0.0.Beta3
MAINTAINER Alexis Hassler <alexis@sewatech.org>

RUN curl -Ls https://bintray.com/artifact/download/hasalex/generic/wildfly-cassandra-module.zip -o wildfly-cassandra-module.zip && \
    unzip wildfly-cassandra-module.zip -d /wildfly-core && rm wildfly-cassandra-module.zip

EXPOSE 9990

ENTRYPOINT ["/wildfly-core/bin/standalone.sh"]
CMD ["-c", "standalone-cassandra.xml", "-bmanagement", "0.0.0.0"]
