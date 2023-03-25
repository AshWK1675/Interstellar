FROM node:18-alpine

WORKDIR /public

COPY package*.json .

RUN npm install

COPY public public/
COPY src/index.js src/

EXPOSE 8080

CMD ["npm", "start"]