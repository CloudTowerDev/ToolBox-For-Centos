yum -y install sqlite-devel libsodium oniguruma oniguruma-devel
wget -O tpl_php801.tar.gz https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/kangle/php/tpl_php801.tar.gz
tar -zxvf tpl_php801.tar.gz
mv tpl_php801 /vhs/kangle/exti
rm -rf /tmp/*
/vhs/kangle/bin/kangle -r
