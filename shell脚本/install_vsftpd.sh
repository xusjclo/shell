#!/bin/bash
FTP_ROOT_DIR="/ops/vsftp"
if [ ! -d $FTP_ROOT_DIR ];then
    mkdir -p $FTP_ROOT_DIR
fi


install_vsftp() 
{
read -p "请输入一个ftp的用户名: " ftpuser
read -p "请输入一个ftp的密码: " ftppasswd
read -p "请输入一个服务器的公网IP: " eip
read -p "请输入ftp被动模式最小端口: " pasv_min_port 
read -p "请输入ftp被动模式最大端口: " pasv_max_port

yum -y install vsftpd libdb-utils db4 db4-utils
useradd -d /ops/vsftp -s /sbin/nologin vsftp
cat > /etc/vsftpd/vsftpd.conf << EOF
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
xferlog_enable=YES
connect_from_port_20=NO
xferlog_std_format=YES
chroot_local_user=YES
chroot_list_enable=YES
chroot_list_file=/etc/vsftpd/chroot_list
listen=yes
listen_ipv6=NO
pam_service_name=vsftpd
userlist_enable=YES
tcp_wrappers=YES
guest_enable=YES
guest_username=vsftp
allow_writeable_chroot=YES
virtual_use_local_privs=NO
user_config_dir=/etc/vsftpd/vuser_conf
pasv_address=${eip}
pasv_enable=YES
pasv_min_port=${pasv_min_port}
pasv_max_port=${pasv_max_port}
EOF
    
touch /etc/vsftpd/chroot_list
cat > /etc/vsftpd/vuser << EOF
${ftpuser}
${ftppasswd}
EOF
    
db_load -T -t hash -f /etc/vsftpd/vuser /etc/vsftpd/vuser.db
chmod 600 /etc/vsftpd/vuser.db

cp /etc/pam.d/vsftpd{,.bak}
sed -i "2,20s/^/#/" /etc/pam.d/vsftpd && echo "" > /etc/pam.d/vsftpd

cat > /etc/pam.d/vsftpd <<EOF
#%PAM-1.0
auth required /lib64/security/pam_userdb.so db=/etc/vsftpd/vuser
account required /lib64/security/pam_userdb.so db=/etc/vsftpd/vuser
EOF
    
    mkdir -p /etc/vsftpd/vuser_conf/
    cat > /etc/vsftpd/vuser_conf/${ftpuser}  <<EOF
local_root=/ops/vsftp/${ftpuser}
anon_umask=077
anon_world_readable_only=NO
anon_upload_enable=YES
anon_mkdir_write_enable=YES
anon_other_write_enable=YES
EOF

    mkdir -p /ops/vsftp/${ftpuser}
    chown -R vsftp.vsftp /ops/vsftp
    chmod -R 500 /ops/vsftp
    chmod -R 755 /ops/vsftp/${ftpuser}
    systemctl restart vsftpd.service
    echo "vsftpd安装配置完成,用户名:${ftpuser}  密码：${ftppasswd}"
    systemctl status vsftpd.service
}

add_ftp_user() 
{
    read -p "请输入一个ftp的用户名: " ftpuser
    read -p "请输入一个ftp的密码: " ftppasswd
cat >> /etc/vsftpd/vuser << EOF
${ftpuser}
${ftppasswd}
EOF
    db_load -T -t hash -f /etc/vsftpd/vuser /etc/vsftpd/vuser.db
    chmod 600 /etc/vsftpd/vuser.db

    cat > /etc/vsftpd/vuser_conf/${ftpuser}  <<EOF
local_root=/ops/vsftp/${ftpuser}
anon_umask=077
anon_world_readable_only=NO
anon_upload_enable=YES
anon_mkdir_write_enable=YES
anon_other_write_enable=YES
EOF
    mkdir -p /ops/vsftp/${ftpuser}
    chown -R vsftp.vsftp /ops/vsftp
    chmod -R 500 /ops/vsftp
    chmod -R 755 /ops/vsftp/${ftpuser}
    systemctl restart vsftpd.service
    echo "FTP用户新增完成,用户名:${ftpuser}  密码：${ftppasswd}"
}

read -p "请输入指令，install表示安装新的ftp，adduser将在现有的ftp下新建ftp子目录供项目使用: " key
if [ $key == "install" ];then
    install_vsftp
elif [ $key == "adduser" ];then
    add_ftp_user
else
    echo "请输入正确指令!"
    exit 1
fi

