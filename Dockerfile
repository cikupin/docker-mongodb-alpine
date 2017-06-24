FROM alpine:3.6
LABEL maintainer="cikupin@gmail.com"

# Install mongodb 3.4.4
RUN apk update
RUN apk add mongodb
RUN apk add mongodb-tools

RUN mkdir /data
RUN mkdir /data/db

EXPOSE 27017
CMD ["mongod"]
