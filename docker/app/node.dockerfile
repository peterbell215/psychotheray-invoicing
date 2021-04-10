FROM node:latest

WORKDIR /home/node/app

COPY ./svelte-app/package.json ./svelte-app/rollup.config.js ./svelte-app/tsconfig.json ./

RUN mkdir -p node_modules
RUN yarn install
