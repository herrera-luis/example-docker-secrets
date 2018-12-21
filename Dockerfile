#syntax = docker/dockerfile:1.0-experimental
FROM alpine
RUN apk add jq sed
COPY ./config-file.conf ./config-file.conf
RUN --mount=type=secret,id=credentials cat /run/secrets/credentials # shows credentials secret from default secret location
RUN --mount=type=secret,id=credentials,dst=/foobar export TEMP_VAR=$(cat /foobar | jq '."username"'); sed -i "s/username_here/$TEMP_VAR/" ./config-file.conf;
RUN --mount=type=secret,id=credentials,dst=/foobar export TEMP_VAR=$(cat /foobar | jq '."password"'); sed -i "s/password_here/$TEMP_VAR/" ./config-file.conf;
RUN --mount=type=secret,id=credentials,dst=/foobar export TEMP_VAR=$(cat /foobar | jq '."driver"'); sed -i "s/drivers_here/$TEMP_VAR/" ./config-file.conf;
RUN cat ./config-file.conf