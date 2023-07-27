FROM node:18.17.0

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.13.10 \
    && apk update \
    && apk add git \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

