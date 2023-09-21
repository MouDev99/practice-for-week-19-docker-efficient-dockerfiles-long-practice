FROM node:10-alpine

ADD . /app

RUN apk update \
&& apk add npm nodejs \
&& cd /app && npm install

CMD cd /app && npm start
