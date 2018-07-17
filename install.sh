# following https://websiteforstudents.com/install-drupal-cms-ubuntu-17-04-17-10/

sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove
sudo apt-get install -y apache2
sudo apt-get install -y mysql-server mysql-client
# MySQL root password: drupalrocks

mysql -u root -pdrupalrocks
sudo apt-get install -y php libapache2-mod-php php-mysql php-xml php-mysql php-curl php-gd php-imagick php-imap php-mcrypt$
wget ftp.drupal.org/files/projects/drupal-8.5.5.tar.gz
tar xzvf drupal*
sudo cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
sudo chmod -R 755 /var/www/html/*
sudo chown -R www-data:www-data /var/www/html/*
sudo nano /etc/apache2/sites-enabled/000-default.conf
---
<VirtualHost *:80>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

      <Directory /var/www/html/>
           Options FollowSymlinks
           AllowOverride All
           Require all granted
      </Directory>
      <Directory /var/www/html/>
           RewriteEngine on
           RewriteBase /
           RewriteCond %{REQUEST_FILENAME} !-f
           RewriteCond %{REQUEST_FILENAME} !-d
           RewriteRule ^(.*)$ index.php?q=$1 [L,QSA]
      </Directory>
</VirtualHost>
---
sudo a2enmod rewrite
sudo service apache2 restart