# テスト用PHP WEB作成

## 前提環境
- AMI: Amazon Linux 2
- SecurityGroup: ssh, http


## 完成環境
- PHP7.2
- php-fpm

## 手順
1. ssh ec2-user@${globalIp} -i ${pem}
2. sudo -i
3. yum install git -y
4. git clone git@github.com:pdoshida/EC2_WEB_PHP_NGINX.git
5. cd EC2_WEB_PHP_NGINX
6. ./install.sh

## 完成したらこれで見ると良い
http://${globalIp}/phpinfo.php
