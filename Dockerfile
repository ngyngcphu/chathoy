FROM node:20-alpine

WORKDIR /backend

COPY ./package*.json ./

RUN npm install --production

COPY ./index.js .

CMD ["node", "index.js"]