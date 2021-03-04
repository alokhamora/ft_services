telegraf &




mysql_install_db --datadir=/var/lib/mysql
/usr/bin/mysqld --user=root --init_file=/init &
while true
do

	if pgrep telegraf && pgrep mysqld
	then
		echo All good
	else
		exit 1
	fi
	sleep 3;
done
