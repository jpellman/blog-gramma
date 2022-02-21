FROM timbru31/java-node:8-azul-alpine-jdk-14
LABEL maintainer "John Pellman <john+github@libjpel.so>"

RUN apk add bash
RUN npm i gramma -g
RUN gramma server install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
