FROM node:16-alpine
MAINTAINER EAS Barbosa <easbarba@outlook.com>

WORKDIR /app

COPY package.json package.json.lock .

RUN npm install

COPY . ./
RUN npm run build

