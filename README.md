# テスト用PHP WEB作成

## 前提環境
- AMI: Amazon Linux 2
- SecurityGroup: ssh, http


## 完成環境
- PHP7.2
- nginx1.12
- ペラ1WEBサイト

## 手順
```
sudo su -
yum install git -y
# 公開鍵配置
ssh-keygen -t rsa
git clone git@github.com:pdoshida/EC2_WEB_PHP_NGINX.git
cd EC2_WEB_PHP_NGINX
./install.sh
```

## 完成したらこれで見ると良い
http://${globalIp}/phpinfo.php
