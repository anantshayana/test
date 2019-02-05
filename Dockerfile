FROM openjdk:8u181

RUN mkdir -p /myapp
COPY gadgetone-mfs-app-webapi-1.0-SNAPSHOT.jar /myapp/webapi.jar
COPY config.yml  /myapp
WORKDIR /myapp
EXPOSE 8080
#ENTRYPOINT [“java”,“-jar”,“webapi.jar”,“server”,“config.yml”]
CMD java -jar /myapp/webapi.jar server config.yml
