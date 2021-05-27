ARG P7ZIP_VERSION=16.02

FROM alpine:3.13
LABEL maintainer="ClusterCIS"

ARG P7ZIP_VERSION
RUN apk --update --no-cache add \
    p7zip=${P7ZIP_VERSION}-r4 \
  && rm -rf /var/cache/apk/* /tmp/*
RUN apk update
RUN apk add git

CMD [ "7za", "--help" ]
