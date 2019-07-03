FROM hseeberger/scala-sbt:11.0.2_2.12.8_1.2.8

MAINTAINER Dmitry Polienko <nigredo.tori@gmail.com>

ENV NODE_VERSION=10.16.0-1nodesource1
ENV YARN_VERSION=1.16.0-1

RUN apt-get update && \
  apt-get install -y curl && \
  ( curl -sL https://deb.nodesource.com/setup_10.x | bash - ) && \
  ( curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ) && \
  ( echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ) && \
  apt-get update && \
  apt-get install -y build-essential nodejs=$NODE_VERSION yarn=$YARN_VERSION && \
  rm -rf /var/lib/apt/lists/*
