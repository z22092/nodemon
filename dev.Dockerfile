FROM node:12.18.1-alpine
ARG NODE_ENV
ARG PORT
WORKDIR /app
COPY . .
RUN apk add python g++ make
RUN npm install
RUN npm i nodemon -g
CMD [ "npm", "run", "dev" ]
