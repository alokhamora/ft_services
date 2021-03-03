FROM alpine:3.12

RUN apk update && apk upgrade && \
	apk add wget nginx php7 php-fpm php-mysqli php7-session php7-json php7-mbstring openssl supervisor
RUN mkdir -p /var/www/phpmyadmin && \
	cd /var/www/phpmyadmin && \
	wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
	tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
	rm phpMyAdmin-5.0.2-all-languages.tar.gz && \
	mv phpMyAdmin-5.0.2-all-languages/* . && \
	rmdir  phpMyAdmin-5.0.2-all-languages
RUN mkdir -p /etc/nginx/ssl && \
	openssl req -keyout /etc/nginx/ssl/nginx.key -new -x509 -days 365 -out etc/nginx/ssl/nginx.crt -nodes -subj "/C=RU"
RUN adduser -D -g user user && \
	chown -R user:user /var/www && \
	chown -R user:user /var/log/php7

RUN mkdir /run/nginx
COPY default.conf /etc/nginx/conf.d/
COPY config.inc.php /var/www/phpmyadmin/
COPY supervisor.conf /etc/
COPY setup.sh .
EXPOSE 5000
ENTRYPOINT sh setup.sh
