nginx
sleep 2
/usr/sbin/sshd
sleep 2

telegraf &
sleep 2


while true
do
	if pgrep nginx > /dev/null && pgrep telegraf > /dev/null && curl --connect-timeout 15 localhost > /dev/null
	then
		echo Everything is fine ':)'
		date
	else
		ps
		exit 1
	fi
	sleep 5
done
