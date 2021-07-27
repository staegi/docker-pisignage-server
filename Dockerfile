FROM node:16.5.0-alpine

RUN apk add --no-cache ffmpeg imagemagick git
RUN mkdir -vp media/_thumbnails
RUN git clone --branch master https://github.com/colloqi/pisignage-server /usr/src/app

VOLUME ["/usr/src/media"]

WORKDIR /usr/src/app

RUN npm install

COPY env.js config/env/docker.js
ENV NODE_ENV docker
ENV MONGO_URI mongodb://localhost/pisignage-server
ENV PORT 3000
EXPOSE 3000

CMD node server.js
