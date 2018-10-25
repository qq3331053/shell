yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker
yum remove git -y
yum –y install git
mkdir ~/test/
cd ~/test/
#git config --global user.name "你的名字"
#git config --global user.email "你的邮箱"
git init
git clone https://github.com/qq3331053/shell.git
echo 'xxx'>REMAKE.md
git add REMAKE.md
git commit -m 'first commit'
git push



