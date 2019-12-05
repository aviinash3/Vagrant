useradd  -mG wheel admin
echo redhat | passwd admin --stdin
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config

sed -i "s/%wheel\tALL=(ALL)\tALL/# %wheel\tALL=(ALL)\tALL/g" /etc/sudoers
sed -i "s/# %wheel\tALL=(ALL)\tNOPASSWD: ALL/%wheel\tALL=(ALL)\tNOPASSWD: ALL/g" /etc/sudoers

service sshd restart
sudo yum install vim -y
sudo yum install httpd
