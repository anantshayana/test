FROM openjdk:8u181

RUN mkdir -p /myapp

WORKDIR /myapp

COPY gadgetone-mfs-app-webapi-0.1.0-SNAPSHOT.jar .
COPY config.yml .

EXPOSE 9292 9293

RUN java -jar gadgetone-mfs-app-webapi-0.1.0-SNAPSHOT.jar server config.yml