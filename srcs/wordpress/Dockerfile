FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add wget nginx php7 php-fpm php-mysqli php-session php7-json openssl
RUN mkdir -p /var/www/wordpress/ && \
	cd /var/www/wordpress/ && \
	wget http://wordpress.org/latest.tar.gz && \
	tar -xzvf latest.tar.gz -C /var/www/ && \
	rm latest.tar.gz 
RUN mkdir -p /etc/nginx/ssl && \
	openssl req -keyout /etc/nginx/ssl/nginx.key -new -x509 -days 365 -out etc/nginx/ssl/nginx.crt -nodes -subj "/C=RU"
COPY default.conf /etc/nginx/conf.d/
COPY wp-config.php var/www/wordpress
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ telegraf
RUN mkdir telegraf
COPY telegraf.conf /etc/telegraf/
RUN	adduser -D -g user user && \
	chown -R user:user /var/www && \
	chown -R user:user /var/log/php7
RUN apk add mysql-client
COPY setup.sh .
RUN mkdir /run/nginx
RUN apk add curl
EXPOSE 5050
ENTRYPOINT sh setup.sh
