cat << EOF | adduser Angelina
1234
1234
EOF


vsftpd /etc/vsftpd/vsftpd.conf &
telegraf 2>&1 /etc/telegraf/telegraf.conf  &

sleep 3

while true
do
	if pgrep vsftpd > /dev/null  && pgrep telegraf > /dev/null  && curl --connect-timeout 15 ftp://localhost
		then
			echo All good
			date
		else
			pgrep vsftpd || echo ftpd died
			pgrep telegraf || echo telegraf died
			exit 1
		fi

		sleep 5
done
