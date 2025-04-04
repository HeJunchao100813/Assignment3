FROM node:18

WORKDIR /app

COPY server.js .
COPY newrelic.js .
COPY package.json .

RUN npm install

CMD ["node", "server.js"]
