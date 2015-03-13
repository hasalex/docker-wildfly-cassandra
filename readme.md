# Content

* Debian Jessie
* Oracle Java 8 - JRE + tools.jar
* [WildFly Core 9.0.0.Beta1-SNAPSHOT](https://github.com/wildfly/wildfly-core)
* [WildFly Cassandra Extension](https://github.com/hawkular/wildfly-cassandra/)

# Build

First, the extension should be up uploaded to bintray.

    curl -T target/wildfly-cassandra-module.zip -u$BT_USER:$BT_KEY -H "X-Bintray-Override: 1" -H "X-Bintray-Publish: 1" https://api.bintray.com/content/$BT_USER/generic/wildfly-core/nightly/wildfly-cassandra-module.zip

Then the image can be built.

	docker build -t hasalex/wildfly .

Of course, you should update the Dockerfile with you own bintray URL.

# Run

    docker run -p 9990:9990 -d sewatech/java7

