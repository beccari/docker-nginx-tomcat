FROM nginx:1.11

MAINTAINER Marcelo Beccari "marcelo.beccari@gmail.com"

ENV TOMCAT_HOST localhost:8080

COPY resources/nginx.conf /etc/nginx/nginx.template.conf
COPY resources/nginx.crt /etc/nginx/ssl/nginx.crt
COPY resources/nginx.key /etc/nginx/ssl/nginx.key
COPY resources/dhparam.pem /etc/nginx/ssl/dhparam.pem


RUN chmod 755 /etc/nginx/nginx.template.conf
RUN chmod 755 /etc/nginx/ssl/nginx.crt
RUN chmod 755 /etc/nginx/ssl/nginx.key
RUN chmod 755 /etc/nginx/ssl/dhparam.pem


CMD envsubst '${TOMCAT_HOST}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'
