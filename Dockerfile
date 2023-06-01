FROM node:20-alpine

WORKDIR /backend

COPY ./signaling-server/package*.json ./

RUN npm install --production

COPY ./signaling-server .

CMD ["node", "index.js"]