FROM golang:1.10-alpine

# Install deps
RUN apk add --progress --no-cache bash curl git openssh-client

COPY . /go/src/github.com/kochurovro/circleci-hw.git
WORKDIR /go/src/github.com/kochurovro/circleci-hw.git

# Build
RUN set -e \
    && go build -o /go/bin/srv

EXPOSE 8080

WORKDIR /go/bin
ENTRYPOINT /go/bin/srv
