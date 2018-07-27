#######################################
# Bash script to install CLAP. For Debian based systems.
# Written by @kingpauloaquino from http://pollyload.com
#######################################

#COLORS
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Update packages and Upgrade system
echo -e "$Cyan \n Updating System.. $Color_Off"
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Apache and Enable
echo -e "$Cyan \n Installing Apache2 $Color_Off"
sudo apt-get install apache2

echo -e "$Cyan \n Starting Apache2 $Color_Off"
systemctl start apache2

echo -e "$Cyan \n Enabling Apache2 $Color_Off"
systemctl enable apache2

echo -e "$Cyan \n Setting up Firewall $Color_Off"
sudo apt-get install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

echo -e "$Cyan \n Enable SSH, HTTP & HTTPS $Color_Off"
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

echo -e "$Cyan \n Installing Python Software Package $Color_Off"
sudo apt-get install python-software-properties

echo -e "$Cyan \n Adding the preferred repository $Color_Off"
sudo add-apt-repository ppa:ondrej/php

# Update packages
echo -e "$Cyan \n Updating System.. $Color_Off"
sudo apt-get update -y

echo -e "$Cyan \n Installing PHP 7.1 $Color_Off"
sudo apt install php7.1 php7.1-xml php7.1-mbstring php7.1-mysql php7.1-json php7.1-curl php7.1-cli php7.1-common php7.1-mcrypt php7.1-gd libapache2-mod-php7.1 php7.1-zip

echo -e "$Cyan \n Installing Curl $Color_Off"
sudo apt-get install curl

echo -e "$Cyan \n Downloading Composer $Color_Off"
curl -sS https://getcomposer.org/installer | php

echo -e "$Cyan \n Setting up Composer $Color_Off"
mv composer.phar /usr/bin/composer