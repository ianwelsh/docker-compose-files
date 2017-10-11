FROM alpine:latest
MAINTAINER Alex Phillips <ahp118@gmail.com>

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
    apk add --no-cache \
    python2-dev \
    py2-pip

RUN pip install awslogs

ENTRYPOINT [ "awslogs" ]
