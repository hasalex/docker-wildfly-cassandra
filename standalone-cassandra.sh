#!/bin/bash
bin/standalone.sh -c standalone-cassandra.xml -bmanagement 0.0.0.0 -bcassandra `hostname`
