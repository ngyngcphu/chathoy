FROM node:18-alpine

WORKDIR /backend

COPY package*.json ./

RUN npm install --production

COPY . .

CMD ["node", "index.js"]