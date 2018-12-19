## Basic example for use secrets in Docker

**This example works in Docker 18.09.0 or greater**

This example is only to demonstrate that the secret can be accessed. The final image built will not have the secret file.

- For Build the image exporting DOCKER_BUILDKIT variable use the next command:

`DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain --secret id=credentials,src=secrets.json .`

- The syntax declaration is necessary for compilation, so don't remove it in the Dockerfile

**NOTE: This example uses buildkit, so you need to enable it. You can found more information about this feature here: https://docs.docker.com/develop/develop-images/build_enhancements/#to-enable-buildkit-builds**