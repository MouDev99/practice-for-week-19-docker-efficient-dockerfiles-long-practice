FROM node:10-alpine

COPY . /app

RUN apk update \
&& apk add npm nodejs \
&& cd /app && npm install

CMD cd /app && npm start
