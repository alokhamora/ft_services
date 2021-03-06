FROM alpine:3.12



RUN apk update && apk upgrade && \
	apk add openssl vsftpd 

RUN openssl req -subj '/CN=localhost/O=mchaya/C=RU' -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout /etc/vsftpd/vsftpd.key -out /etc/vsftpd/vsftpd.crt


RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ telegraf

COPY setup.sh .
COPY vsftpd.conf /etc/vsftpd/
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN apk add curl
ENTRYPOINT sh setup.sh
