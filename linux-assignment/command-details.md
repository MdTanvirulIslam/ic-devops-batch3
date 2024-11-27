## File System Navigation
   1. List the contents of the home directory.
   2. Change the current directory to /var/log and list its contents.
   3. Find and display the path to the bash executable using the which command.
   4. Find current shell


### 1. List the contents of the home directory

Run the following command to list the contents of the home directory:

        ls ~

The ~ symbol represents the home directory for the current user. 

![List the content](images/1.png)

### 2. Change the current directory to /var/log and list its contents

            cd /var/log



Then list its contents:
            ls

![change the current directory](images/2.png)




For a detailed view of files (e.g., permissions, sizes, and dates), use:

            ls -l

![list of content](images/3.png)





### 3. Find and display the path to the bash executable using the *which* command


            which bash

This will display the full path to the bash executable, usually */bin/bash*


### 4. Find the current shell

Run the following command to display current shell:


            echo $SHELL

This will output the path to the shell using, such as */bin/bash*


![full path of the bash](images/6.png)


If we need to determine the shell process currently running, use:


        ps -p $$

The output will show the name of the shell process, e.g., bash or zsh.


![name of shell process](images/7.png)