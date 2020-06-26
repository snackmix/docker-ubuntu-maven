FROM openjdk:8-jdk-alpine

MAINTAINER  SnackMix <snackmix_git@protonmail.com>

RUN apt-get update
RUN apt-get install -y git wget curl
RUN apt-get clean

RUN wget --no-verbose -O /tmp/apache-maven-3.3.9-bin.tar.gz http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar xzf /tmp/apache-maven-3.3.9-bin.tar.gz -C /opt
RUN ln -s /opt/apache-maven-3.3.9 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.3.9-bin.tar.gz

ENV MAVEN_HOME /opt/maven

EXPOSE 80 443