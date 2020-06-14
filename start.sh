echo "Backing up the php.ini"
sleep 2;
cp /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini.back
echo "Backing up done"
sleep 2;
echo "Starting editing the php file"
sleep 2;
sudo sed -i "s/post_max_size = .*/post_max_size = 200M/" /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini
sudo sed -i "s/memory_limit = .*/memory_limit = 300M/" /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini
sudo sed -i "s/upload_max_filesize = .*/upload_max_filesize = 512M/" /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini
sudo sed -i "s/max_execution_time = .*/max_execution_time = 18000/" /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini
sudo sed -i "s/; max_input_vars = .*/max_input_vars = 5000/" /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini
echo "done editing the php file"
sleep 2;
echo "Restarting the php"
sudo killall -9 lsphpnew
sleep 2;
echo "IF you got a error when restarting the php, then reboot the server by entering sudo reboot"