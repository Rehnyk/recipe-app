FROM node:21.6.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Create a directory for node_modules
# This is optional since the volume will override it at runtime
RUN mkdir /app/node_module

EXPOSE 3001

CMD ["npm", "run","dev"]

