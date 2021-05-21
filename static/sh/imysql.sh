if [ "$1" == "full" ]
then
	echo "Full installation"
	sudo pacman -Sy cracklib curl galera python-mysqlclient perl-dbd-mariadb
elif [ "$1" == "light" ]
then
	echo "Light installation, perl-dbd-mariadb won't be installed"
	sudo pacman -Sy cracklib curl galera python-mysqlclient
else
	echo "Additional packages will not be installed"
fi
sudo pacman -Sy mysql
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
