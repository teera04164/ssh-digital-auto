sudo yum check-update
yum install epel-release -y
sudo yum install -y nginx
sudo yum install -y git
sudo systemctl start nginx
sudo systemctl enable nginx
setsebool -P httpd_can_network_connect 1

curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker

sudo usermod -aG docker $(whoami)
sudo usermod -aG docker usr1



ln -s /etc/nginx nginx
cd /usr/src
mkdir project
cd ~
ln -s /usr/src/project project
