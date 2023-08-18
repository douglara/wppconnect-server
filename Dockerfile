FROM node:16-buster
WORKDIR /usr/src/app

COPY . .

RUN yarn install
RUN yarn build
EXPOSE 8080
CMD yarn start
