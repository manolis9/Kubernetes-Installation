token=$(kubeadm token create --ttl 0)
#echo $token
#join="sudo kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
#echo $join

echo "kubeslave1"
#set up sftp
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S apt-get install -y vsftpd"
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S mv /etc/vsftpd.conf /etc/vsftpd.conf_orig
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S echo "
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=10100
allow_writeable_chroot=YES
" >>/etc/vsftpd.conf
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S ufw allow from any to any port 20,21,10000:10100 proto tcp
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S service vsftpd restart

sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"

echo "kubeslave2"
#set up sftp
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S apt-get install -y vsftpd"
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S mv /etc/vsftpd.conf /etc/vsftpd.conf_orig
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S echo "
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=10100
allow_writeable_chroot=YES
" >>/etc/vsftpd.conf
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S ufw allow from any to any port 20,21,10000:10100 proto tcp
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S service vsftpd restart

sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"

echo "kubeslave3"
#set up sftp
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S apt-get install -y vsftpd"
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S mv /etc/vsftpd.conf /etc/vsftpd.conf_orig
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S echo "
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=10100
allow_writeable_chroot=YES
" >>/etc/vsftpd.conf
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S ufw allow from any to any port 20,21,10000:10100 proto tcp
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S service vsftpd restart

sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"

echo "kubeslave4"
#set up sftp
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S apt-get install -y vsftpd"
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S mv /etc/vsftpd.conf /etc/vsftpd.conf_orig
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S echo "
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=10100
allow_writeable_chroot=YES
" >>/etc/vsftpd.conf
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S ufw allow from any to any port 20,21,10000:10100 proto tcp
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S service vsftpd restart

sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"

echo "kubeslave5"
#set up sftp
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S apt-get install -y vsftpd"
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S mv /etc/vsftpd.conf /etc/vsftpd.conf_orig
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S echo "
listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO
pasv_enable=Yes
pasv_min_port=10000
pasv_max_port=10100
allow_writeable_chroot=YES
" >>/etc/vsftpd.conf
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S ufw allow from any to any port 20,21,10000:10100 proto tcp
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S service vsftpd restart

sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"


#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"
#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-#token-unsafe-skip-ca-verification"


