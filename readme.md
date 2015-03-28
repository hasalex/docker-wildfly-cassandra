# Content

* Debian Jessie
* Oracle Java 8 - JRE + tools.jar
* [WildFly Core 1.0.0.Beta3](https://github.com/wildfly/wildfly-core)
* [WildFly Cassandra Extension](https://github.com/wildfly-extras/wildfly-cassandra/)

# Build

First, the extension should be up uploaded to bintray.

    curl -T target/wildfly-cassandra-module.zip -u$BT_USER:$BT_KEY -H "X-Bintray-Override: 1" -H "X-Bintray-Publish: 1" https://api.bintray.com/content/$BT_USER/generic/wildfly-core/nightly/wildfly-cassandra-module.zip

Then the image can be built.

	docker build -t hasalex/wildfly-cassandra .

Of course, you should update the Dockerfile with you own bintray URL.

# Run

    docker run -p 9990:9990 -d hasalex/wildfly-cassandra

CORS is enabled in standalone-cassandra.xml. By default, the hosts _http://localhost_ and _http://docker_ are allowed. Of course you can (should) customize it.
