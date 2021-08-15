sudo yum check-update
sudo yum install -y nginx;
sudo yum install -y git;
sudo systemctl start nginx;
sudo systemctl enable nginx;
curl -sL https://rpm.nodesource.com/setup_14.x | bash -
sudo yum install -y nodejs
sudo npm i -g pm2
setsebool -P httpd_can_network_connect 1

ln -s /etc/nginx nginx
cd /usr/src
mkdir project
cd ~
ln -s /usr/src/project project