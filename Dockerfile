FROM ubuntu:latest
USER root
RUN apt-get update
RUN apt-get install apache2 -y
RUN service apache2 start
RUN echo "This is Docker HTTPD container" > /var/www/html/index.html
RUN service apache2 restart
CMD /bin/bash
