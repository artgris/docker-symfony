FROM debian:stretch

MAINTAINER Maxence POUTORD <maxence.poutord@gmail.com>


RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/
ADD symfony3.conf /etc/nginx/sites-available/
ADD symfony4.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/symfony3.conf /etc/nginx/sites-enabled/symfony3
RUN ln -s /etc/nginx/sites-available/symfony4.conf /etc/nginx/sites-enabled/symfony4
RUN rm /etc/nginx/sites-enabled/default

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
