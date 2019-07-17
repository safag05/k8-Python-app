FROM python:3

Maintainer Khuslentuguldur Solongo

ADD ./ /app

WORKDIR /app

# COPY /root/.aws /root/

RUN pip install ndg-httpsclient==0.5.1
RUN pip install python-socketio==3.0.1
RUN pip install websocket-client==0.54.0

EXPOSE 8080

CMD [ "python", "/app/sample.py" ]
