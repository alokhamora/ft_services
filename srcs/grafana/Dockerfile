FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add openssl && \
	apk add -X http://dl-cdn.alpinelinux.org/alpine/v3.13/community grafana && \
	apk add -X http://dl-cdn.alpinelinux.org/alpine/v3.13/community telegraf
RUN mkdir /usr/share/grafana/ssl && \
	openssl req -x509 -newkey rsa:4096 -nodes -out /usr/share/grafana/ssl/site.crt -keyout /usr/share/grafana/ssl/site.key -subj "/C=RU/L=Moscow/CN=site"


COPY dashboards.yaml  /usr/share/grafana/conf/provisioning/dashboards/sample.yaml
COPY datasources.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY dashboards/* /usr/share/grafana/conf/provisioning/dashboards/
RUN mkdir /etc/telegraf/
COPY telegraf.conf /etc/telegraf/
COPY setup.sh .
ENTRYPOINT sh setup.sh
#CMD grafana-server -homepath /usr/share/grafana
