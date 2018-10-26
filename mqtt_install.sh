yum -y install gcc gcc-c++
wget http://mosquitto.org/files/source/mosquitto-1.4.14.tar.gz
tar zxfv mosquitto-1.4.14.tar.gz
cd mosquitto-1.4.14
make && make install
sudo yum install c-ares-devel
sudo yum install e2fsprogs-devel
sudo ln -s /usr/local/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1
sudo ldconfig
#开启服务
#mosquitto -v
#订阅主题
#mosquitto_sub -v -t sensor
#发布内容
#mosquitto_pub -t sensor  -m 12







