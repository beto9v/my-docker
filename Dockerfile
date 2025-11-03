FROM ubuntu:24.04
ENV debian_frontend=nointeractive
RUN apt-get update && apt-get -y install nginx
COPY ./web /var/www/html
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]
