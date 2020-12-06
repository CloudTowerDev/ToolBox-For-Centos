function main(){
    clear
    version = "cat /etc/redhat-release|sed -r 's/.* ([0-9]+)\..*/\1/'";
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
    3. BTPanel宝塔面板安装助手（一键安装宝塔面板）
    0. 退出脚本 （再次打开此脚本请使用sh install命令）"
    read -p "请输入执行序号并且回车" number
    case number in
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
    read -p "请输入执行序号并且回车" number
    case number in
    [1]) (install_php_800);;
    [2]) (install_php_748);;
    [0]) (main);;
    *) (install_php);;
    esac
}

function auto_disk(){
    clear
    rm -rf auto_disk.sh
    echo -e "正在下载挂载脚本"
    wget -O auto_disk.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/tools/auto_disk.sh;sh auto_disk.sh
    rm -rf auto_disk.sh
    main
}

function install_php_800(){
    clear
    rm -rf tpl_php800.sh
    echo -e "正在下载PHP800脚本"
    wget -O tpl_php800.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/kangle/php/tpl_php800.sh;sh tpl_php800.sh
    rm -rf tpl_php800.sh
    install_php
}

function install_php_748(){
    clear
    rm -rf tpl_php748.sh
    echo -e "正在下载PHP748脚本"
    wget -O tpl_php800.sh https://raw.githubusercontent.com/CloudTowerDev/ToolBox-For-Centos/main/kangle/php/tpl_php748.sh;sh tpl_php748.sh
    rm -rf tpl_php748.sh
    install_php
}

function BTPanel(){
    clear
    rm -rf install.sh
    echo -e "正在下载宝塔安装脚本"
    wget -O install.sh http://download.bt.cn/install/install_6.0.sh;sh install.sh
    rm -rf install.sh
    main
}