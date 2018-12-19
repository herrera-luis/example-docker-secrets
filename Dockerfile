#syntax = docker/dockerfile:1.0-experimental
FROM alpine
RUN apk add jq
RUN --mount=type=secret,id=credentials cat /run/secrets/credentials
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."username"'
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."password"'
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."driver"'