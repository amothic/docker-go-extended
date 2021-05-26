FROM golang:1.16-buster

RUN set -ex \
    && go install gotest.tools/gotestsum@latest \
    && go install github.com/google/wire/cmd/wire@latest \
    && go install github.com/go-delve/delve/cmd/dlv@latest \
    && go install github.com/cosmtrek/air@latest

