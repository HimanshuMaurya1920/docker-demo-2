FROM node:19-alpine

WORKDIR /DOCKER-2

COPY package*.json . 

RUN npm ci

COPY . .  

EXPOSE 3001

CMD ["npm", "run", "dev"]