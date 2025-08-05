#!/bin/sh
set -e

MAVEN_VERSION=3.8.1
MVN_HOME="$PWD/.mvn/wrapper"
MVN_WRAPPER_JAR="$MVN_HOME/maven-wrapper.jar"
MVN_WRAPPER_PROPERTIES="$MVN_HOME/maven-wrapper.properties"

if [ ! -f "$MVN_WRAPPER_JAR" ]; then
  echo "Downloading Maven Wrapper..."
  mkdir -p "$MVN_HOME"
  curl -o "$MVN_WRAPPER_JAR" "https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar"
  echo "Downloading Maven Wrapper properties..."
  curl -o "$MVN_WRAPPER_PROPERTIES" "https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/0.5.6/maven-wrapper.properties"
fi

exec java -jar "$MVN_WRAPPER_JAR" "$@"