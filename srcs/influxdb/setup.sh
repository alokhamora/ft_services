influxd --config /etc/influxdb.conf &

sleep 3

telegraf &

sleep 3

while true 
do
	if pgrep telegraf && pgrep influxd 
	then
		date
		echo All good
	else
		pgrep telegraf || echo  telegraf died
		pgrep influxd || echo influxd died
		exit 1
	fi
	sleep 2;
done
