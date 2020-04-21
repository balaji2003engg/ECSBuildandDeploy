FROM nginx:latest
MAINTAINER Balaji
RUN nginx -v
COPY index.html /usr/share/nginx/html/