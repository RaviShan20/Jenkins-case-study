FROM ubuntu
RUN apt-get update && DEBIAN_FRONTEND="noniteractive" apt-get install -y tzdata && apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

