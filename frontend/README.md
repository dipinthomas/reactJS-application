# ReactJs Application

The react application is built with [npm](https://www.npmjs.com/)

## Multi-Stage Build

The size of a Docker image can be greatly decreased by utilizing a multi-stage docker image, in which only the build artifacts are copied across and no additional build dependencies are included. The usage of a light-weight apline image aids in a speedier start-up time.

Dockerfile is present in the root directory along with docker-compose file.

## Environment file .env

With the help of an environment file, we can generate an immutable docker image without having to make any code changes that could cause issues.

When performing the build command, the hidden file .env in the frontend folder will be used. 

**REACT_APP_PROXY_HOST**: The IP address/hostname on which the nginx reverse proxy runs.
**REACT_APP_PROXY_PORT**: The port of nginx reverse proxy, which is 5000 by default.

*To change this port update the configuration [here](https://github.com/dipinthomas/reactJS-application/blob/master/proxy/uwsgi_backend.conf) and build a new image*

create a file .env with below content

```
REACT_APP_PROXY_HOST=localhost
REACT_APP_PROXY_PORT=5000
```
*note: its not recommended approach to have .env file in the git repo. CICD pipeline should be used to automate this step base on the environment*

# Build Image

change directroy to **reactJS-application** floder root

Login to docker hub

> docker login 

Build image
> docker image build -t dipinthomas2003/node-frontend:minikube .

*dont miss the . **dot** at the end*

Push image
> docker push dipinthomas2003/node-frontend:minikube

**NOTE: replace _dipinthomas2003_ with the name of your  docker repo**


# Improvement

The current implementation requires that the *.env* file be updated for each environment; however, this is not a suggested or scalable solution. Externalize the environment variable injest is the way forward.

# Pipeline

Above steps should be automated using CI tools like **Jenkins** when using in production.