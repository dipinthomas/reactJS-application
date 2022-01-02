from python:latest

# change directory
WORKDIR /app
COPY ./* .

# Install flask dependency
RUN pip3 install -r requirements.txt
EXPOSE 5000

ENTRYPOINT [ "uwsgi", "--ini", "app.ini" ]