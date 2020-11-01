#! /bin/bash
#This will Print and save a title and the ip address
printf "New Login From : " > /tmp/sshlogin
echo $SSH_CONNECTION | cut -d " " -f 1 >> /tmp/sshlogin
#this will email the file with ip address to you email
echo "New SSH Login" | mail -s "New SSH Login to Server" you@email.address < /tmp/sshlogin
#finally remove temp file
rm -rf /tmp/sshlogin
