nginx
sleep 2
php-fpm7
sleep 2

telegraf &

sleep 2

while true
do
	if pgrep nginx > /dev/null && pgrep php-fpm7 > /dev/null  && pgrep telegraf > /dev/null && curl --connect-timeout 15 localhost:5050 > /dev/null
	then
		date
		echo Everything is good
	else
		ps
		exit 1
	fi
	sleep 10
done
