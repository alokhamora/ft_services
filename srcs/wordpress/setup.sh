nginx
php-fpm7


while true
do
	if pgrep nginx && pgrep php-fpm7
	then
		echo Everything is good
	else
		exit 1
	fi
	sleep 10
done
