FROM node:alpine

LABEL maintainer="Cảnh Kiều <minhcanhdn0704@gmail.com>"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache bash

# RUN npm install nodemon -g
RUN npm install pm2 -g

ADD ./scripts/command.sh /opt/command.sh
RUN sed -i 's/\r//g' /opt/command.sh
CMD ["/bin/bash", "/opt/command.sh"]
