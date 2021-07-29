FROM node:14-alpine

RUN apk add --update bash

RUN mkdir /http-addrindexrc/

COPY ./package.json /http-addrindexrc/package.json
COPY ./.env /http-addrindexrc/.env
WORKDIR /http-addrindexrc

RUN npm install
RUN npm install --global

COPY ./src ./src

ENV PORT 8336

CMD ["npm", "run", "main"]

