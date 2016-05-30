FROM java:8
MAINTAINER sven@malvik.de

RUN apt-get update -y && apt-get install -y vim && apt-get install -y unzip

RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod u+x /usr/local/bin/lein
ENV LEIN_ROOT true
RUN lein

RUN curl -o /tmp/LightTable.zip https://github.com/LightTable/LightTable/archive/master.zip
RUN unzip /tmp/LightTable.zip -d /usr/local/bin/

WORKDIR /home/
