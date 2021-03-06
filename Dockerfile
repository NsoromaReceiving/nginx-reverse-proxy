FROM nginx:stable-alpine
COPY default.conf /etc/nginx/conf.d
COPY .htpasswd /etc/nginx/.htpasswd
EXPOSE 80/tcp
EXPOSE 443/tcp
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html