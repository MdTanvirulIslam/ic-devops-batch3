# commands.sh

# List the contents of the home directory
echo "Contents of the home directory:"
ls ~

# Change to /var/log and list its contents
echo "Changing to /var/log and listing contents:"
cd /var/log
ls

# Find and display the path to the bash executable
echo "Path to bash executable:"
which bash

# Find the current shell
echo "Current shell:"
echo $SHELL


#!/bin/bash

# Create a directory named linux_fundamentals in the home directory
sudo mkdir linux_fundamentals

# Create a subdirectory named scripts inside linux_fundamentals
sudo mkdir linux_fundamentals/scripts

# Create an empty file named example.txt inside linux_fundamentals
sudo touch linux_fundamentals/example.txt

# Copy example.txt to the scripts directory
sudo cp linux_fundamentals/example.txt  linux_fundamentals/scripts/

# Create a backup directory inside linux_fundamentals
sudo mkdir linux_fundamentals/backup

# Move example.txt from linux_fundamentals to linux_fundamentals/backup
sudo mv linux_fundamentals/example.txt linux_fundamentals/backup/

# Change the permissions of example.txt to read and write for the owner, and read-only for the group and others
sudo chmod 644 linux_fundamentals/backup/example.txt

# Verify the permission changes
sudo ls -l linux_fundamentals/backup/example.txt
