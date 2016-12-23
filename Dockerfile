FROM nginx:1.11

MAINTAINER Marcelo Beccari "marcelo.beccari@gmail.com"

ENV TOMCAT_HOST localhost:8080

COPY nginx.conf /etc/nginx/nginx.template.conf
RUN chmod 755 /etc/nginx/nginx.template.conf

CMD envsubst '${TOMCAT_HOST}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'
