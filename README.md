# docker-sbt-node

Docker image for building Scala projects with JS frontend. Contains JDK, SBT, NodeJS, Yarn and Docker in Docker. Docker in Docker allows the SBT Docker Plugin to build docker images using SBT. This image is based on [hseeberger/scala-sbt](https://hub.docker.com/r/hseeberger/scala-sbt).

# Builds

Automated builds are available on [Dockerhub](https://hub.docker.com/r/nigredo/sbt-node).

# Versioning

Tag versioning scheme: `X_Y_Z`:

- `X` is JDK version
- `Y` is SBT version
- `Z` is NodeJS version
