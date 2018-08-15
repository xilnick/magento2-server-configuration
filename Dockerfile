FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:ondrej/php -y

RUN apt-get update

VOLUME /app
WORKDIR /app

ADD . .

CMD [ "/bin/bash" ]
