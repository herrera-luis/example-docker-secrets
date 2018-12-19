## Basic example of using secrets in Docker

**This example works in Docker 18.09.0 or greater**

- For Build the image exporting DOCKER_BUILDKIT variable use the next command:
`DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain --secret id=credentials,src=secrets.json .`

**NOTE: This example uses buildkit, so you need to enable it**