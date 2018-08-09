FROM ubuntu:16.04

LABEL lx mageprovision

VOLUME /app
WORKDIR /app

ADD . .
