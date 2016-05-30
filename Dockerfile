FROM java:8
MAINTAINER sven@malvik.de

RUN apt-get update -y && apt-get install -y vim

RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod u+x /usr/local/bin/lein
ENV LEIN_ROOT true
RUN lein

RUN curl -Lo /tmp/LightTable.tar.gz https://github.com/LightTable/LightTable/releases/download/0.8.1/lighttable-0.8.1-linux.tar.gz
RUN tar -zxvf /tmp/LightTable.zip -d /usr/local/bin/

WORKDIR /home/
