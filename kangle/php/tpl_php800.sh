yum -y install sqlite-devel libsodium oniguruma oniguruma-devel
wget -O tpl_php800.tar.gz https://raw.githubusercontent.com/NetherXiaoYu/kangle_php/master/tpl_php800.tar.gz
tar -zxvf tpl_php800.tar.gz
mv tpl_php800 /vhs/kangle/ext
echo -e "\ndisable_functions = system,pcntl,pcntl_exec,pcntl_fork,exec,shell_exec,passthru,proc_open,proc_close, proc_get_status,checkdnsrr,getmxrr,getservbyname,getservbyport,chroot,chgrp,chown,readlink,syslog,symlink,putenv,popen,openlog,show_source,highlight_file,dl,socket_listen,socket_create,socket_bind,socket_accept, socket_connect, stream_socket_server, stream_socket_accept,stream_socket_client,ftp_connect, ftp_login,ftp_pasv,ftp_get,sys_getloadavg,disk_total_space, disk_free_space,posix_ctermid,posix_get_last_error,posix_getcwd, posix_getegid,posix_geteuid,posix_getgid, posix_getgrgid,posix_getgrnam,posix_getgroups,posix_getlogin,posix_getpgid,posix_getpgrp,posix_getpid, posix_getppid,posix_getpwnam,posix_getpwuid, posix_getrlimit, posix_getsid,posix_getuid,posix_isatty, posix_kill,posix_mkfifo,posix_setegid,posix_seteuid,posix_setgid, posix_setpgid,posix_setsid,posix_setuid,posix_strerror,posix_times,posix_ttyname,posix_uname" >> /vhs/kangle/ext/tpl_php800/php-templete.ini
rm -rf /tmp/*
/vhs/kangle/bin/kangle -r
