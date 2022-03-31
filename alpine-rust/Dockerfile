FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add build-base

RUN apk add curl

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"
