mkdir ~/go -p
cd ~/go
wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
