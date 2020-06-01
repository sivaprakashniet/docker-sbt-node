FROM hseeberger/scala-sbt:11.0.7_1.3.12_2.12.11

MAINTAINER Dmitry Polienko <nigredo.tori@gmail.com>

ENV NODE_VERSION=10.20.1-1nodesource1
ENV YARN_VERSION=1.22.4-1

# This also includes build-essential since some JS packages use native features.
# We assume that Python is already present.
RUN rm -rf /var/lib/apt/lists/* && \
  apt-get update && \
  apt-get install -y apt-transport-https && \
  ( curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ) && \
  ( echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ) && \
  ( curl -sL https://deb.nodesource.com/setup_10.x | bash - ) && \
  apt-get install -y nodejs=$NODE_VERSION yarn=$YARN_VERSION build-essential && \
  rm -rf /var/lib/apt/lists/*
