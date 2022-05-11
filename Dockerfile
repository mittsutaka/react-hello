FROM node:16-alpine
WORKDIR /app

# 本当はここでnpm installやりたいがなんかエラー出るから断念
# COPY ./app/package.json .
# RUN npm install

COPY ./app .

ENTRYPOINT [ "sh","-c","./boot.sh" ]