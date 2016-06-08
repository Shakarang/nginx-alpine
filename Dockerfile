FROM alpine:3.3
MAINTAINER Maxime Junger <maxime.junger@epitech.eu>

RUN apk add --update nginx && rm -rf /var/cache/apk/*

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www"]

ENTRYPOINT ["nginx", "-g", "daemon off;"]

EXPOSE 80 443
