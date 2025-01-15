#!/bin/bash

#Part 1: Nginx server configurating script

#install nginx
sudo apt install nginx


#Start the Nginx and ensure it runs on system boot.
sudo service nginx start
curl http://172.31.22.25


#Customize the Nginx default webpage to display the custom message.

echo "<html><body><h4>Welcome to the advanced Linux training module.</h4><h4>Learning by doing is the key to mastery</h4></body></html>" > /var/www/html/index.nginx-debian.html


#Verify that the custom message is displayed by accessing the Nginx server in a browser or using curl.
curl http://172.31.22.25


#Part 2: Nginx monitoring script
#Monitor the status of nginx server evary 2 minutes

(crontab -l 2>/dev/null; echo "*/2 * * * * /home/ubuntu/nginx-monitoring-script2.sh") | crontab
-