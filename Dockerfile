FROM centos:7
MAINTAINER sven@malvik.de

RUN yum update -y && yum install -y vim

RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod u+x /usr/local/bin/lein
RUN export LEIN_ROOT=1
RUN lein

VOLUME /home/LightTable
WORKDIR /home/LightTable
