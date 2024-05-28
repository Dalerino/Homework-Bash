#!/bin/bash

for user in emma mia chloe zoe
do
  if ! id -u $user &>/dev/null
then
  useradd $user
  echo "User $user created."
else
  echo "User $user already exists."
fi
done

for folder in day week month year
do
  if [ ! -d $folder ]
then
  mkdir $folder
  echo "Folder $folder created."
else
  echo "Folder $folder already exists."
fi
done

yum install -y wget httpd php php-mysql
systemctl start httpd
systemctl enable httpd
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rsync -avP wordpress/ /var/www/html/
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/
systemctl restart httpd
 echo "WordPress installed."


if [ "$1" == "create_users" ]
then
   create_users
elif [ "$2" == "create_folders" ]
then
    create_folders
elif [ "$3" == "install_wordpress" ]
 then
    install_wordpress
else
    echo "Invalid options. Please use create_users, create_folders, or install_wordpress as arguments."
fi

