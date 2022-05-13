
echo "  _      ____   _____          _         _____ ______ _______ _    _ _____  
 | |    / __ \ / ____|   /\   | |       / ____|  ____|__   __| |  | |  __ \ 
 | |   | |  | | |       /  \  | |      | (___ | |__     | |  | |  | | |__) |
 | |   | |  | | |      / /\ \ | |       \___ \|  __|    | |  | |  | |  ___/ 
 | |___| |__| | |____ / ____ \| |____   ____) | |____   | |  | |__| | |     
 |______\____/ \_____/_/    \_\______| |_____/|______|  |_|   \____/|_|     
                                                                            
                                                                            
                                                                (I had fun lol)-Rayne"
current_path=$( pwd )
echo ""
echo -n "Is this for first time setup? y/n :"
read -r setup
if [ $setup == y ] || [ $setup == yes ]; then
	echo -e "This is for first time setup.\nUse ddevstart after this setup"
	ddev config
	echo -e "#######################################################
			Enter name of the file you want to use.\nMake sure the database file is in the same directory\n(It's much easier)
			########################################################"
	echo -n "Database File:"
	read -r database
	mv $database $PWD/CurrentDatabase.sql.gz
	ddev import-db --src=CurrentDatabase.sql.gz
	ddev drush cr
	ddev drush en stage_file_proxy -y
	ddev drush config-set stage_file_proxy.settings origin "SITE"
	ddev start
else
	rm current.sql.gz
	echo -e "#######################################################
			Enter name of the file you want to use.\nMake sure the database file is in the same directory\n(It's much easier)
			########################################################"
	echo -n "Database File:"
	read -r database
	mv "$database" "$current_path/current.sql.gz"
	ddev drush cr
fi
