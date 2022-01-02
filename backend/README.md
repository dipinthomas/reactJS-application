# Flask App

A simple flask appliction that returns cpu & ram usage as a json string.

## File Description

### app.py
flask application code

### wsgi.py

uwsgi default settings file for application. You can read more [here](https://docs.djangoproject.com/en/4.0/howto/deployment/wsgi/)

### app.ini

The flask application is started using the uWSGI configuration file

### Dockerfile

Instructions to build container image. We are using the latest version of python to run the flask application.  

Requirements.txt contains Flask app dependencies, which are installed when the image is being constructed.

# Build Image

change directroy to **backend** floder

Login to docker hub

> docker login 

Build image
> docker image build -t dipinthomas2003/wsgi-python:latest .

*dont miss the . **dot** at the end*

Push image
> docker push dipinthomas2003/wsgi-python:latest

**NOTE: replace _dipinthomas2003_ with the name of your  docker repo**


# Pipeline

Above steps should be automated using CI tools like **Jenkins** when using in production.