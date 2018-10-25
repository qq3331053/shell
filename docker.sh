#守护进程重启   sudo systemctl daemon-reload
#重启docker服务   systemctl restart  docker
#重启docker服务  sudo service docker restart
#关闭docker   service docker stop   
#关闭docker  systemctl stop docker
#--------------------- 
#作者：EasternUnbeaten 
#来源：CSDN 
#原文：https://blog.csdn.net/easternunbeaten/article/details/80463837 
#版权声明：本文为博主原创文章，转载请附上博文链接！
/bin/systemctl stop docker.service
yum remove docker -y
yum remove docker-selinux
touch /etc/yum.repos.d/docker.repo
cat>/etc/yum.repos.d/docker.repo<<EOF
[dockerrepo]
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF
yum install docker-engine -y
docker version
service docker start
