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
