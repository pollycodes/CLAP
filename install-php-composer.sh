
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