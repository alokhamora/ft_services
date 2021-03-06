
cd /usr/share/grafana
grafana-server  &
sleep 2
telegraf /etc/telegraf.conf &
sleep 10


while true
do
	if pgrep grafana && pgrep telegraf 
	then
		echo All good
	else
		exit 1
	fi
	sleep 15
done
