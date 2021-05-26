FROM golang:1.16-buster

RUN set -ex \
    && go get gotest.tools/gotestsum \
    && go get github.com/google/wire/cmd/wire \
    && go install github.com/go-delve/delve/cmd/dlv@latest
