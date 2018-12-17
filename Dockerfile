FROM node:8.14.0-alpine

RUN cd / \
   && mkdir app \
   && mkdir upload \
   && cd app

COPY . /app

WORKDIR /app

RUN npm install \
   && npm run build

VOLUME /upload

EXPOSE 7300

ENTRYPOINT ["npm","run","start"]
