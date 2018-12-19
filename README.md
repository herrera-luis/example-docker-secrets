## Basic example for use secrets in Docker

**This example works in Docker 18.09.0 or greater**

- For Build the image exporting DOCKER_BUILDKIT variable use the next command:

`DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain --secret id=credentials,src=secrets.json .`

- The syntax declaration is necessary for compilation, so don't remote it in the Dockerfile

**NOTE: This example uses buildkit, so you need to enable it. You can found more information about this feature here: https://docs.docker.com/develop/develop-images/build_enhancements/#to-enable-buildkit-builds**