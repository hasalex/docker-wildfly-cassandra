FROM wfdemo/wildfly-core
MAINTAINER Alexis Hassler <alexis@sewatech.org>

WORKDIR /wildfly-core

RUN curl -Ls https://bintray.com/artifact/download/hasalex/generic/wildfly-cassandra-module.zip -o wildfly-cassandra-module.zip && \
    unzip wildfly-cassandra-module.zip && rm wildfly-cassandra-module.zip

ADD standalone-cassandra.sh bin/

EXPOSE 9990 9042 9160

ENTRYPOINT ["bin/standalone-cassandra.sh"]
CMD []
