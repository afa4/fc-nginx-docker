FROM node:18.15-alpine

WORKDIR app/

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY src/index.js .

CMD ["node", "index.js"]