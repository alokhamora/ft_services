nginx
/usr/sbin/sshd

telegraf &


while true
do
	if pgrep nginx > /dev/null && pgrep sshd > /dev/null && pgrep telegraf > /dev/null
	then
		echo Everything is fine ':)'
	else
		exit 1
	fi
	sleep 5
done
