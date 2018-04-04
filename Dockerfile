#
# NodeJS 8.11 Build Image
# Docker image with libraries and tools as required for building NodeJS 8.11 projects using Yarn 
#

FROM node:8.11.1-alpine
MAINTAINER Agile Digital <info@agiledigital.com.au>
LABEL Description="Docker image with libraries and tools as required for building NodeJS 8.11 projects using Yarn" Vendor="Agile Digital" Version="0.1"

ENV HOME /home/builder

RUN addgroup -S -g 10000 builder
RUN adduser -S -u 10000 -h $HOME builder

ENV SOURCE_DIR /home/builder/src
ENV ARTIFACT_DIR /home/builder/artifacts
ENV TEST_RESULT_DIR /home/builder/tests

ADD scripts /home/builder/scripts/node811
RUN chmod g+rx /home/builder/scripts/*

WORKDIR /home/builder
USER builder