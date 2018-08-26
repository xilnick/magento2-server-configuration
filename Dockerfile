FROM ubuntu:18.04

VOLUME /app
WORKDIR /app

ADD . .

CMD [ "/bin/bash" ]
