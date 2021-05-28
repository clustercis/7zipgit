ARG P7ZIP_VERSION=16.02

FROM alpine:3.13
LABEL maintainer="ClusterCIS"

ARG P7ZIP_VERSION
RUN apk --update --no-cache add \
    p7zip=${P7ZIP_VERSION}-r4 \
    git \
    php
  && rm -rf /var/cache/apk/* /tmp/*
