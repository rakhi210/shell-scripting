#!/bin/bash# 

#Define source and destination directories
source_dir= "/home/centos/shell-project"
dest_dir="/home/centos/shell-project/ramakrishna-backup"


#Create a timestamp for the backup folder name

timestamp=$(date +"%Y%m%d_%H%M%S")


#Create a backup folder with the current timestamp

backup_folder="$dest_dir/backup_$timestamp"
mkdir -p "$backup_folder"
# copy the contents of the source directory to the backup folder
cp -r "$source_dir"/* "$backup_folder"
echo " backup completed sucessfully"

..............................................................................................................................................


Here's how the script works:

#!/bin/bash: This line is called a shebang and tells the system to use the Bash shell to execute the script.

source_dir and destination_dir: Replace these variables with the actual paths of your source and destination directories.

timestamp: This line generates a timestamp in the format "YYYYMMDD_HHMMSS".

backup_folder: This line combines the destination directory with the timestamp to create a unique backup folder.

mkdir -p "$backup_folder": This creates the backup folder. The -p flag ensures that the script won't throw an error if the folder already exists.

cp -r "$source_dir"/* "$backup_folder": This line recursively copies the contents of the source directory to the backup folder.

echo "Backup completed successfully.": This prints a message to the console indicating that the backup process is complete.
