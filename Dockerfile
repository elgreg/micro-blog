FROM alpine:edge

# Install node + npm
RUN apk update
RUN apk add nodejs-npm

# Install mongodb
RUN apk add mongodb --update-cache \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  --allow-untrusted

VOLUME /data/db
VOLUME /mongodb/backup

# ADD docker_entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 27017
# CMD ["mongod"]

#Install blog
RUN mkdir /api
WORKDIR /api
COPY package.json /api
RUN npm install
COPY . /api
EXPOSE 3000
CMD ["npm", "start"]
