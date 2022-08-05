FROM ubuntu:latest
USER root
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "This is Docker HTTPD container" > /var/www/html/index.html
CMD service apache2 start && /bin/bash
