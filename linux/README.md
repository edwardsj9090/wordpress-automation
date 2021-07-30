# Wordpress Installer Script

This script will setup all of the prerequsite LAMP stack components and create a default WordPress database and DB user (you may want to change those post-install).

At the linux command line, do this:

NOTE: You do not need to prepend _sudo_ in step 3 because sudo is specified inside the script.  If the script needs your password, it will ask.

1. If _git_ is not installed, just run `sudo apt install git`
2. `git clone https://github.com/edwardsj9090/wordpress-automation`
3. `cd wordpress-automation/linux`
4. `sh install_wp.sh`
