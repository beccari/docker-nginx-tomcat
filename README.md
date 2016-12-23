nginx-tomcat is a dead simple reverse proxy for any tomcat server with minimum config

# Running the container

`docker run -p 80:80 -e TOMCAT_HOST=myserver:8080 --name nginx-proxy beccari/nginx-tomcat`

where `TOMCAT_HOST=myserver:8080` is the IP address or server-name tomcat is running.

This is a required parameter
