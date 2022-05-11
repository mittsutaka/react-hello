FROM node:16-alpine
WORKDIR /app

COPY ./app/package.json .

RUN npm install

COPY ./app .

ENTRYPOINT [ "yarn","start" ]