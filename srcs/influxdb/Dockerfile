FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ influxdb
CMD influxd --config /etc/influxdb.conf	
