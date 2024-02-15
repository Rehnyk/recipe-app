FROM node:18.17.1

WORKDIR /app

COPY ./src/package*.json ./

WORKDIR /app/src

RUN npm install --production=false

EXPOSE 3001

CMD [ "npm", "start"]