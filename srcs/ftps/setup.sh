cat << EOF | adduser ang
1234
1234
EOF


vsftpd /etc/vsftpd/vsftpd.conf &
telegraf 2>&1 /etc/telegraf/telegraf.conf  &


while true
do
	if pgrep vsftpd > /dev/null  && pgrep telegraf > /dev/null 
		then
			echo All good
			date
		else
			exit 1
		fi

		sleep 5
done
