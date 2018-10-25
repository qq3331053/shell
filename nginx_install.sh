yum -y install gcc-c++
yum install -y pcre pcre-devel
yum install -y zlib zlib-devel
yum install -y openssl openssl-devel
yum install -y wget
mkdir ~/nginx/ -p
cd ~/nginx/
wget -c https://nginx.org/download/nginx-1.12.0.tar.gz
tar -zxvf nginx-1.12.0.tar.gz
cd nginx-1.12.0
mkdir /var/temp/nginx/ -p
./configure \
--prefix=/usr/local/nginx \
--conf-path=/usr/local/nginx/conf/nginx.conf \
--pid-path=/usr/local/nginx/conf/nginx.pid \
--lock-path=/var/lock/nginx.lock \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-http_gzip_static_module \
--http-client-body-temp-path=/var/temp/nginx/client \
--http-proxy-temp-path=/var/temp/nginx/proxy \
--http-fastcgi-temp-path=/var/temp/nginx/fastcgi \
--http-uwsgi-temp-path=/var/temp/nginx/uwsgi \
--http-scgi-temp-path=/var/temp/nginx/scgi

make
make install
cd /usr/local/nginx/sbin/
#./nginx 
#./nginx -s stop
#./nginx -s quit
#./nginx -s reload
