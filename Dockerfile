FROM hasalex/wildfly-core
MAINTAINER Alexis Hassler <alexis@sewatech.org>

WORKDIR /wildfly-core

RUN curl -Ls https://bintray.com/artifact/download/hasalex/generic/wildfly-cassandra-module.zip -o wildfly-cassandra-module.zip && \
    unzip wildfly-cassandra-module.zip && rm wildfly-cassandra-module.zip

EXPOSE 9990

ENTRYPOINT ["bin/standalone.sh"]
CMD ["-c", "standalone-cassandra.xml", "-bmanagement", "0.0.0.0"]
