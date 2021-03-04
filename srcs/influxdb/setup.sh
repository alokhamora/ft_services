influxd --config /etc/influxdb.conf

sleep 3 && telegraf &

telegraf &

while true 
do
	if pgrep telegraf && pgrep influxd
	then
		echo All good
	else
		exit 1
	fi
	sleep 2;
done
