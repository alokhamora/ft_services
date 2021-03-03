FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add openssl && \
	apk add -X http://dl-cdn.alpinelinux.org/alpine/edge/community grafana
RUN mkdir /usr/share/grafana/ssl && \
	openssl req -x509 -newkey rsa:4096 -nodes -out /usr/share/grafana/ssl/site.crt -keyout /usr/share/grafana/ssl/site.key -subj "/C=RU/L=Moscow/CN=site"
RUN mkdir /usr/share/grafana/conf/dashboards

