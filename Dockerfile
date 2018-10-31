FROM openjdk:8u181

RUN mkdir -p /myapp
COPY gadgetone-mfs-app-webapi-1.0-SNAPSHOT.jar /myapp 
COPY config.yml  /myapp

WORKDIR /myapp


EXPOSE 9292 9293

