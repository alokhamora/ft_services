FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ influxdb
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ telegraf
RUN mkdir telegraf
COPY telegraf.conf /etc/telegraf/
COPY setup.sh .
ENTRYPOINT sh ./setup.sh
#CMD influxd --config /etc/influxdb.conf	
