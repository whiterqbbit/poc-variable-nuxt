# syntax = docker/dockerfile:1
FROM node:20-alpine AS base

# ENV TOMATO=hi_from_env_docker

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build

COPY docker-entrypoint.sh /
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]

# COPY env.sh /
# ENTRYPOINT ["sh", "/env.sh"]

ENV TOMATO="${TOMATO}"
ENV NUXT_TOMATO="${NUXT_TOMATO}"

CMD [ "npm", "run", "start" ]