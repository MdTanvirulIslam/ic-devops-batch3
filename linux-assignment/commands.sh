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




# Step 1: Create a new group named students
sudo groupadd students

# Step 2: Create a new user named student and assign them to the students group
sudo useradd -g students student

# Step 3: Create a file named example.txt in the home directory
touch example.txt

# Step 4: Change the owner of example.txt to the user student
sudo chown student example.txt

# Step 5: Change the group of example.txt to the group students
sudo chgrp students example.txt

# Step 6: Verify the changes
ls -l example.txt



# Step 1: Create a directory named project in the home directory
mkdir project

# Step 2: Create a file named report.txt inside the project directory
touch project/report.txt

# Step 3: Set the permissions of report.txt to read and write for the owner, and read-only for the group and others
chmod 644 project/report.txt

# Step 4: Set the permissions of the project directory to read, write, and execute for the owner,
# and read and execute for the group and others
chmod 755 project

# Step 5: Verify the changes
echo "Permissions for report.txt:"
ls -l project/report.txt
echo "Permissions for project directory:"
ls -ld project




# Task 1: Create a new user named developer
useradd developer

# Task 2: Set the home directory of the user developer to /home/developer_home
usermod -d /home/developer_home developer
mkdir -p /home/developer_home
chown developer:developer /home/developer_home

# Task 3: Assign the shell /bin/sh to the user developer
usermod -s /bin/sh developer

# Task 4: Verify the new user's information
echo "User 'developer' details:"
getent passwd developer

# Task 5: Change the username of the user developer to devuser
usermod -l devuser developer

# Task 6: Add devuser to a group named devgroup
groupadd devgroup
usermod -aG devgroup devuser

# Task 7: Set the password of devuser to devpass
echo "devuser:Dev@1234" | chpasswd  # Use a strong password that complies with system policy

# Task 8: Verify the changes made to the user
echo "User 'devuser' details:"
getent passwd devuser
echo "Group memberships for 'devuser':"
groups devuser



# Task 1: Create a file named original.txt in your home directory
echo "This is the original file." > original.txt

# Task 2: Create a symbolic link named softlink.txt pointing to original.txt
ln -s original.txt softlink.txt

# Task 3: Verify the symbolic link
echo "Verifying symbolic link:"
ls -l softlink.txt

# Task 4: Delete the original file original.txt and observe the status of the symbolic link
rm original.txt
echo "After deleting original.txt, symbolic link status:"
ls -l softlink.txt  # The link will now be broken

# Task 5: Create a file named datafile.txt in your home directory
echo "This is the data file." > datafile.txt

# Task 6: Create a hard link named hardlink.txt pointing to datafile.txt
ln datafile.txt hardlink.txt

# Task 7: Verify the hard link
echo "Verifying hard link:"
ls -l datafile.txt hardlink.txt

# Task 8: Check the inode of both datafile.txt and hardlink.txt
echo "Inodes of datafile.txt and hardlink.txt:"
ls -i datafile.txt hardlink.txt

# Task 9: Delete the original file datafile.txt and observe the status of the hard link
rm datafile.txt
echo "After deleting datafile.txt, hard link status:"
ls -l hardlink.txt  # The hard link should still work

# Task 10: Find all .txt files in your home directory
echo "Finding all .txt files in the home directory:"
find . -type f -name "*.txt"



# Task 1: Update the repository cache using apt
echo "Updating repository cache..."
sudo apt update

# Task 2: Install a package named tree
echo "Installing 'tree' package..."
sudo apt install -y tree

# Task 3: Install gcloud CLI tool
echo "Installing gcloud CLI tool..."

# Add the Cloud SDK distribution URI as a package source
echo "Adding the Cloud SDK distribution URI..."
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list > /dev/null

# Import the Google Cloud public key
echo "Importing the Google Cloud public key..."
sudo apt-get install -y apt-transport-https ca-certificates
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg > /dev/null

# Update and install the Google Cloud SDK
echo "Updating repository cache and installing Google Cloud SDK..."
sudo apt update && sudo apt install -y google-cloud-sdk

# Verify installation
echo "Verifying installations..."
tree --version
gcloud --version





