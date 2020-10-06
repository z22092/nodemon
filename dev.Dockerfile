FROM node:12.18.1-alpine
ENV NODE_ENV = development
ENV PORT = 7001
WORKDIR /app
ADD package.json /app
RUN apk add python g++ make
RUN npm i --silent
RUN npm i nodemon -g
COPY . /app
CMD nodemon index.js
