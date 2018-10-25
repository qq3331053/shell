sudo rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
sudo yum install -y nginx
nginx -c /etc/nginx/nginx.conf
#网站文件存放默认目录
#/usr/share/nginx/html
#网站默认站点配置
#/etc/nginx/conf.d/default.conf
#自定义Nginx站点配置文件存放目录
#/etc/nginx/conf.d/
#Nginx全局配置
#/etc/nginx/nginx.conf



