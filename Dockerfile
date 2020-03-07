FROM node:10.19.0

WORKDIR /app
COPY ./VUN-Strapi-master/ ./

ENV \
    NODE_ENV=production \
    DATABASE_PROVIDER=sqlite \
    DATABASE_HOST="127.0.0.1" \
    DATABASE_PORT=27017 \
    DATABASE_NAME=strapi \
    DATABASE_USERNAME="" \
    DATABASE_PASSWORD=""

RUN yarn add mysql && yarn install && yarn build

EXPOSE 1337
CMD  ["yarn", "start"]