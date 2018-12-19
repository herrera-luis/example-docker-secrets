#syntax = docker/dockerfile:1.0-experimental
FROM alpine
RUN apk add jq
RUN --mount=type=secret,id=credentials cat /run/secrets/credentials # shows credentials secret from default secret location
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."username"' # shows username credentials secret from custom secret location
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."password"' # shows password credentials secret from custom secret location
RUN --mount=type=secret,id=credentials,dst=/foobar cat /foobar | jq '."driver"'