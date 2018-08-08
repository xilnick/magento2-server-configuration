FROM ubuntu

LABEL lx mageprovision

VOLUME /app
WORKDIR /app

ADD . .
