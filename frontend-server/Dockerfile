FROM node:21.6.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Create a directory for node_modules
# This is optional since the volume will override it at runtime
RUN mkdir /app/node_module

EXPOSE 3000

ENV HOST=0.0.0.0

CMD [ "npm", "run", "dev", "--", "--host", "0.0.0.0"]