clear
rm -rf install.sh
echo -e "正在下载宝塔安装脚本"
wget -O install.sh http://download.bt.cn/install/install_6.0.sh;sh install.sh
rm -rf install.sh
sleep 5
main