#!/bin/bash

function create_users() {
  for i in emma mia chloe zoe
do
  useradd $i
done
}

function create_folders() {
  for a in day week month year
do
  mkdir $a
done
}

function install_wordpress() {
    yum install -y httpd wget unzip epel-release mysql
    yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm 
    yum-config-manager --enable remi-php74 
    yum install -y php 
    yum install -y php-mysql 
    wget https://wordpress.org/latest.tar.gz 
    tar -xf latest.tar.gz -C /var/www/html/ 
    mv /var/www/html/wordpress/* /var/www/html/ 
    chown -R apache:apache /var/www/html/ 
    rm -rf /var/www/html/index.html 
    systemctl restart httpd
    systemctl enable httpd
}

read -p "Enter the function name to execute (user/folder/install wordpress): " function_name
if [[ $function_name == "create_users" ]]; then
    create_users
elif [[ $function_name == "create_folders" ]]; then
    create_folders
elif [[ $function_name == "install_wordpress" ]]; then
    install_wordpress
else
    echo "Invalid function name. Please enter either 'user' 'folder' or 'install wordpress'."
fi


