
grafana-server -homepath /usr/share/grafana &
telegraf /etc/telegraf.conf &



while true
do
	if pgrep grafana && pgrep telegraf || true
	then
		echo All good
	else
		exit 1
	fi
	sleep 1
done
