FROM ubuntu:18.04

ADD . /app

RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y npm nodejs \
&& cd /app && npm install

CMD cd /app && npm start
