## USE THIS IF YOU'D RATHER DO AUTOMATED INSTALLATION ##
echo "THIS WILL INSTALL DATABASE SETUP SCRIPT FOR 
Make sure you have the following installed beforehand.
-DOCKER
-Your multidev pulled and checked out"

echo -n "Install Raynes script for database import automation?[Y/N]"
read -r "install"
if [ $install == y ] || [ $install == yes ]; then
	mkdir -p ~/raynescripts
curl -L LINK TO REPOSITORY FILE
chmod +x database-setup
sudo ln -s ~/raynescripts/terminus /usr/local/bin/database-setup
else
	exit
fi
