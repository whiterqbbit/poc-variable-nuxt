# syntax = docker/dockerfile:1
FROM node:20-alpine AS base

ENV YOLO="${YOLO}"
# ENV YOLO=coucou_du_env_docker

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build
CMD [ "npm", "run", "start" ]