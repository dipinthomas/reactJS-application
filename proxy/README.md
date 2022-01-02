# Reverse Proxy

Nginx provides native support for the uwsgi protocol, which will be used instead of HTTP to communicate with the flask application. The use of uwsgi aids in the scaling of the Python application.

# File Description

## uwsgi_backend.conf

Nginx rever proxy configuration, if you want to change the defualt port *5000* this is the configuration file for it.

Flask application server **hostname** and **port** will be dynamically inject when the container starts, using entrypoint. This help us use same docker image in any environment as the configuration are externlized. 

Environment variable *BB_HOST* & *BB_PORT* with respective values are inject which the container is deployed.

## uwsgi_params

Supported uwsgi parameters by nginx. 

# Build Image

change directroy to **proxy** floder

Login to docker hub

> docker login 

Build image
> docker image build -t dipinthomas2003/nginx-proxy-uwsgi:latest .

*dont miss the . **dot** at the end*

Push image
> docker push dipinthomas2003/nginx-proxy-uwsgi:latest

**NOTE: replace _dipinthomas2003_ with the name of your  docker repo**


# Pipeline

Above steps should be automated using CI tools like **Jenkins** when using in production.

