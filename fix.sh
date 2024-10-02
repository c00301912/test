#/bin/bash
nmcli d c ens192

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=https://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

echo "sslverify=false" >> /etc/yum.conf
yum update -y && yum upgrade -y
