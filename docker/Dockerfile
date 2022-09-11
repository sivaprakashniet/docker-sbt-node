FROM hseeberger/scala-sbt:8u312_1.6.2_3.1.1

ENV YARN_VERSION=1.22.19-1

# This also includes build-essential since some JS packages use native features.
# We assume that Python is already present.
RUN rm -rf /var/lib/apt/lists/* && \
  apt-get update && \
  apt-get install -y apt-transport-https && \
  ( curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ) && \
  ( echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ) && \
  ( curl -sL https://deb.nodesource.com/setup_lts.x | bash - ) && \
  apt-get install -y nodejs yarn=$YARN_VERSION build-essential && \
  rm -rf /var/lib/apt/lists/*