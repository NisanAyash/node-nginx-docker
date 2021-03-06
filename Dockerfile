FROM node:12-alpine

WORKDIR /usr/src/app/api

COPY package*.json ./

RUN npm install 

COPY . . 

EXPOSE 3000

CMD ["echo", "Starting server..."]

CMD ["node", "index"]