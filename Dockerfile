FROM node:12.16.1-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY src ./src
CMD ["yarn", "run", "start"]
