FROM node:lts-alpine3.18 as base
WORKDIR /usr/src/wpp-server
ENV NODE_ENV=production PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
COPY package.json ./
RUN yarn install --production --pure-lockfile && \
    yarn cache clean

FROM base as build
WORKDIR /usr/src/wpp-server
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
COPY package.json  ./
RUN yarn install --production=false --pure-lockfile && \
    yarn cache clean

COPY . .

RUN yarn install
RUN yarn build
EXPOSE 8080
CMD yarn start
