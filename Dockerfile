FROM node:16.15.0-alpine
EXPOSE 3000

WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./

RUN yarn install
COPY . .

CMD ["node", "dist/index.js"]