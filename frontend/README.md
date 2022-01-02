# ReactJs Application

The react application is built with [npm](https://www.npmjs.com/)

## Multi-Stage Build

The size of a Docker image can be greatly decreased by utilizing a multi-stage docker image, in which only the build artifacts are copied across and no additional build dependencies are included. The usage of a light-weight apline image aids in a speedier start-up time.

Dockerfile is present in the root directory along with docker-compose file.

## Environment file .env

With the help of an environment file, we can generate an immutable docker image without having to make any code changes that could cause issues.

When performing the build command, the hidden file .env in the root folder will be used. 

**REACT_APP_PROXY_HOST**: The address on which the nginx reverse proxy runs.
**REACT_APP_PROXY_PORT**: The port of nginx reverse proxy, which is 5000 by default.


# Build Image

change directroy to **root** floder

Login to docker hub

> docker login 

Build image
> docker image build -t dipinthomas2003/node-frontend:minikube .

*dont miss the . **dot** at the end*

Push image
> docker push dipinthomas2003/node-frontend:minikube

**NOTE: replace _dipinthomas2003_ with the name of your  docker repo**


# Improvement

The current standard requires that the *.env* file be updated for each environment; however, this is not a suggested or scalable solution. Externalize the environment variable injest is the way forward.

# Pipeline

Above steps should be automated using CI tools like **Jenkins** when using in production.