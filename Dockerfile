FROM golang:1.16-buster

RUN set -ex \
    && go install gotest.tools/gotestsum@latest \
    && go install github.com/google/wire/cmd/wire@latest \
    && go install github.com/go-delve/delve/cmd/dlv@latest \
    && go install github.com/cosmtrek/air@latest \
    && wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -O /usr/local/bin/wait-for-it \
    && chmod u+x /usr/local/bin/wait-for-it \
    && mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

