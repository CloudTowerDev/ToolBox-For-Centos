function main(){
    clear
    version=`cat /etc/redhat-release|sed -r 's/.* ([0-9]+)\..*/\1/'`
    if [ "${version}" != '7' ]; then
        echo '本脚本目前仅支持Centos-7版本使用，请使用Centos-7系统运行本脚本！'
        exit;
    fi
    echo -e "
    +---------------------------------------------------------------------------------+
    |                              ToolBox For Centos                             
    +---------------------------------------------------------------------------------+
    |                     www.cloudtower.cn/toolbox-for-centos                    
    +---------------------------------------------------------------------------------+
    |  Copyright © 2020-2099 CloudTower(http://www.cloudtower.cn) All rights reserved.
    +---------------------------------------------------------------------------------+

    *ToolBox For Centos*
    ===================================================================================
    1. Kangle/Easypanel PHP版本安装（需先自行安装Kangle/Easypanel）
    2. 磁盘挂载助手（自定义挂载目录）
    3. BTPanel宝塔面板使用助手（安装/离线升级）
    0. 退出脚本 （再次打开此脚本请使用sh toolbox.sh命令）"
    read -p "请输入执行序号并且回车： " number
    case "$number" in
    [1]) (install_php);;
    [2]) (auto_disk);;
    [3]) (BTPanel);;
    [0]) ;;
    *) (main);;
    esac
}

function install_php(){
    clear
    echo -e "
    +---------------------------------------------------------------------------------+
    |                              ToolBox For Centos                             
    +---------------------------------------------------------------------------------+
    |                     www.cloudtower.cn/toolbox-for-centos                    
    +---------------------------------------------------------------------------------+
    |  Copyright © 2020-2099 CloudTower(http://www.cloudtower.cn) All rights reserved.
    +---------------------------------------------------------------------------------+

    *Kangle/Easypanel PHP版本安装*
    ===================================================================================
    1. 一键安装PHP8.0.0（需先安装Kangle/Easypanel）
    2. 一键安装PHP7.4.8（需先安装Kangle/Easypanel）
    0. 返回"
    read -p "请输入执行序号并且回车： " number
    case "$number" in
    [1]) (install_php_800);;
    [2]) (install_php_748);;
    [0]) (main);;
    *) (install_php);;
    esac
}

function BTPanel(){
    clear
    echo -e "
    +---------------------------------------------------------------------------------+
    |                              ToolBox For Centos                             
    +---------------------------------------------------------------------------------+
    |                     www.cloudtower.cn/toolbox-for-centos                    
    +---------------------------------------------------------------------------------+
    |  Copyright © 2020-2099 CloudTower(http://www.cloudtower.cn) All rights reserved.
    +---------------------------------------------------------------------------------+

    *宝塔面板使用助手*
    ===================================================================================
    1. 一键安装宝塔最新版（已安装请勿重复安装）
    2. 一键更新宝塔最新稳定版（开发版请使用开发版升级）（离线升级，支持IPv6）
    2. 一键更新宝塔最新开发版（稳定版请使用稳定版升级）（离线升级，支持IPv6）
    0. 返回"
    read -p "请输入执行序号并且回车： " number
    case "$number" in
    [1]) (install_bt);;
    [2]) (update_bt_stable);;
    [2]) (update_bt_dev);;
    [0]) (main);;
    *) (install_php);;
    esac
}

function install_bt(){
    clear
    rm -rf install.sh
    echo -e "正在下载安装脚本"
    wget -O install.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/BTPanel/install.sh;sh install.sh
    rm -rf install.sh
    sleep 5
    main
}

function update_bt_dev(){
    clear
    rm -rf update.sh
    echo -e "正在下载稳定更新脚本"
    wget -O update.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/BTPanel/linuxpanel-develop.sh;sh linuxpanel-develop.sh
    rm -rf update.sh
    sleep 5
    main
}

function update_bt_stable(){
    clear
    rm -rf update.sh
    echo -e "正在下载开发安装脚本"
    wget -O update.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/BTPanel/linuxpanel-stable.sh;sh linuxpanel-stable.sh
    rm -rf update.sh
    sleep 5
    main
}

function auto_disk(){
    clear
    rm -rf auto_disk.sh
    echo -e "正在下载挂载脚本"
    wget -O auto_disk.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/tools/auto_disk.sh;sh auto_disk.sh
    rm -rf auto_disk.sh
    sleep 5
    main
}

function install_php_800(){
    clear
    rm -rf tpl_php800.sh
    echo -e "正在下载PHP800脚本"
    wget -O tpl_php800.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/kangle/php/tpl_php800.sh;sh tpl_php800.sh
    rm -rf tpl_php800.sh
    sleep 5
    install_php
}

function install_php_748(){
    clear
    rm -rf tpl_php748.sh
    echo -e "正在下载PHP748脚本"
    wget -O tpl_php800.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/kangle/php/tpl_php748.sh;sh tpl_php748.sh
    rm -rf tpl_php748.sh
    sleep 5
    install_php
}

main