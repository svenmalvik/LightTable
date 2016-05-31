# docker run --name LightTable --rm -v <PROJECT_PATH>:/home/<PROJECT_NAME> -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY LightTable/lighttable

FROM java:8
MAINTAINER sven@malvik.de

RUN apt-get update -y && apt-get install -y vim unzip

RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
  && chmod u+x /usr/local/bin/lein

ENV LEIN_ROOT true
RUN lein

RUN curl -sL https://deb.nodesource.com/setup | bash - \
  && apt-get install -y nodejs build-essential

RUN curl -Lo /tmp/LightTable.zip https://github.com/LightTable/LightTable/archive/master.zip \
  && unzip /tmp/LightTable.zip -d /usr/local/bin/ \
  &&  /usr/local/bin/LightTable-master/script/build.sh

WORKDIR /home/

CMD /usr/local/bin/LightTable-master/script/light.sh 
