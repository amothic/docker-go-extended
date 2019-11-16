FROM golang:1.13-alpine

RUN set -ex \
    && apk add --no-cache git gcc musl-dev \
    && go get -u gotest.tools/gotestsum
