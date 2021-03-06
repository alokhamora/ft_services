

sleep 3


mysql_install_db --datadir=/var/lib/mysql
sleep 3
/usr/bin/mysqld --user=root --init_file=/init &

sleep 3
telegraf &
sleep 3

mysql -u root  < wordpress.sql
sleep 3
while true
do

	if pgrep telegraf && pgrep mysqld && mysql -u root --connect_timeout 15
	then
		echo All good
	else
		exit 1
	fi
	sleep 3;
done
