#! /bin/sh

gradle clean assemble

cp build/libs/* /Users/twer/github/apache-tomcat-6.0.37/webapps

source clearDB.sh
