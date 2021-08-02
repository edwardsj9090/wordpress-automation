# Wordpress Installer Script

This script will setup all of the prerequsite LAMP stack components and create a default WordPress database and DB user.

=====================================================================

**DEBIAN USERS START HERE**

Debian/Raspberry Pi users will have to add the 3rd party _sury_ repository in order to download the proper php packages before continuing.

`sudo apt update`

`sudo apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https`

`wget https://packages.sury.org/php/apt.gpg`

`sudo apt-key add apt.gpg`

`echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list`

The script will run the update and upgrade commands.

=====================================================================

**OTHERWISE START HERE**

**NOTE:** You do not need to prepend _sudo_ in step 3 because sudo is specified inside the script.  If the script needs your password, it will ask.

At the Linux command line:

1. If _git_ is not installed, just run `sudo apt install git`
2. `git clone https://github.com/edwardsj9090/wordpress-automation`
3. `sh wordpress-automation/linux/install_wp.sh`

======================================================================

**NOTE:** I recommend logging into your MySQL/MariaDB database instance and changing the WP connection values post-install.  Then update them in your **wp-config.php** file to match.
