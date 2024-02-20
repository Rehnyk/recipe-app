FROM node:18.17.1

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install

EXPOSE 3001

CMD ["npm", "run", "dev"]
