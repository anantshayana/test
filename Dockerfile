#FROM openjdk:8u181

#RUN mkdir -p /myapp
#COPY gadgetone-mfs-app-webapi-1.0-SNAPSHOT.jar /myapp 
#COPY config.yml  /myapp

#WORKDIR /myapp


#EXPOSE 9292 9293

FROM php:5.6-apache
COPY index.php /var/www/html/

EXPOSE 80 8080
