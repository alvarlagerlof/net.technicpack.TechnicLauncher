#!/bin/sh
TECHNIC_LAUCNHER_HOME="/app"

# # sanity check
# if [ -z "$HOME" ]; then
# 	echo '$HOME must be set'
# 	exit 1
# fi

# if [ "$EUID" = "0" ]; then
# 	echo "$0 must NOT run as root"
# fi


# # select application data folder
# APP_DATA="$XDG_CONFIG_HOME/filebot"
# LIBRARY_PATH="$FILEBOT_HOME/lib/$(uname -m):/lib64"
# MODULE_PATH=$(echo /usr/lib/jvm/java-*-openjdk/lib/javafx.* | tr ' ' ':')

# sanity check
if [ -z "$HOME" ]; then
	echo '$HOME must be set'
	exit 1
fi

if [ "$EUID" = "0" ]; then
	echo "$0 must NOT run as root"
fi


LIBRARY_PATH="$TECHNIC_LAUCNHER_HOME/lib/$(uname -m):/lib64"

java -jar /app/bin/TechnicLanucher.jar





#!/bin/sh

# LIBRARY_PATH="$TECHNIC_LAUCNHER_HOME/lib/$(uname -m):/lib64"

# A quick script to migrate back to the non-xdg directory.
# This is done due to the launcher not fully respecting the --workDir argument so we have to hack our way around it.
# if [ ! -f $XDG_DATA_HOME/../.technic/.nonxdg-migrated ]; then
#     if [ -d $XDG_DATA_HOME/technic ]; then
#         echo "Migrating back to $XDG_DATA_HOME/../.technic"

#         # Checks if there already are files in .technic.
#         # We move them to a safe folder in case someone for some reason stores something there.
#         # Version 2.2.1867 of the launcher actually also doesn't respect the --workDir argument properly so this might just back up a log file.
#         if [ "$(ls -A $XDG_DATA_HOME/../.technic)" ]; then
#             echo "$XDG_DATA_HOME/../.technic not empty. Moving away files so that we don't overwrite anything..."
#             mkdir -p $XDG_DATA_HOME/../.technic-backup
#             mv $XDG_DATA_HOME/../.technic/* $XDG_DATA_HOME/../.technic-backup/
#         fi

#         mv $XDG_DATA_HOME/technic/* $XDG_DATA_HOME/../.technic/
#         rm -r $XDG_DATA_HOME/technic
#     fi
#     # We create a symlink incase that we want to migrate back to using $XDG_DATA_HOME/technic.
#     ln -s $XDG_DATA_HOME/../.technic $XDG_DATA_HOME/technic
#     touch $XDG_DATA_HOME/../.technic/.nonxdg-migrated
# fi


# 	java -jar /app/bin/TechnicLanucher.jar --workDir $XDG_DATA_HOME/../.technic

# exec /app/extra/minecraft-launcher/minecraft-launcher $@ --workDir $XDG_DATA_HOME/../.technic