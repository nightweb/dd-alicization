ARG ARCH_PREFIX=""
FROM ${ARCH_PREFIX}golang:alpine
WORKDIR /app

ADD . /app

RUN go build main.go

ENTRYPOINT /app/entrypoint.sh