FROM ubuntu
RUN apt upgrade -y
RUN apt update -y
Run apt install maven -y
Run apt install docker -y
RUN apt install apache2 -y
COPY index.html /var/www/html
VOLUME ["/vol"]
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]
