FROM nginx:alpine

LABEL maintainer="Cảnh Kiều <minhcanhdn0704@gmail.com>"

COPY ./conf/nginx.conf /etc/nginx/

RUN apk update \
  && apk upgrade \
  && apk add --no-cache openssl \
  && apk add --no-cache bash \
  && adduser -D -H -u 1000 -s /bin/bash www-data

# Set upstream conf and remove the default conf
RUN rm /etc/nginx/conf.d/default.conf
