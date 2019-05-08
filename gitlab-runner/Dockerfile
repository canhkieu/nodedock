FROM gitlab/gitlab-runner:alpine

LABEL maintainer="Cảnh Kiều <minhcanhdn0704@gmail.com>"

USER root

RUN echo "gitlab-runner ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN apk --update add shadow sudo nodejs nodejs-npm python make g++ \
  && chown -R gitlab-runner /usr/bin/npm \
  && chown -R gitlab-runner /usr/bin/node \
  && mkdir /var/www && chown -R gitlab-runner /var/www


# RUN gitlab-runner verify --delete \
#   gitlab-runner unregister --all-runners