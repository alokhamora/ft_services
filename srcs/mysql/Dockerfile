FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add mariadb mariadb-client
RUN mkdir /run/mysqld
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY my.cnf /etc/
COPY init .
COPY setup.sh .
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ telegraf
RUN mkdir telegraf
COPY telegraf.conf /etc/telegraf/
ENTRYPOINT sh setup.sh
