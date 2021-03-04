FROM alpine:3.12

RUN apk update && \
	apk upgrade && \
	apk add nginx openssl openssh
RUN	mkdir -p /run/nginx	&& \
	mkdir -p /ssl && \
	openssl req -keyout /ssl/nginx.key -new -x509 -days 365 -out /ssl/nginx.crt -nodes -subj "/C=RU"
RUN adduser -D user user && \
	chown -R user:user /var/www && \
	adduser -D admin admin && \
	echo "admin:admin" | chpasswd && \
	ssh-keygen -A
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ telegraf
RUN mkdir telegraf
COPY telegraf.conf /etc/telegraf/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY setup.sh .
CMD sh  setup.sh
#CMD supervisord -c /etc/supervisord.conf

