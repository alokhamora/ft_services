nginx
/usr/sbin/sshd

sh

while true
do
	if pgrep nginx > /dev/null && pgrep sshd > /dev/null
	then
		echo Everything is fine ':)'
	else
		exit 1
	fi
	sleep 5
done
