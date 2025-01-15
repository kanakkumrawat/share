# bq-training
Task 2 : Nginx configuration and monitoring
Created two Scripts nginx-minitoring-script1.sh which is the first script and an another scipt name nginx-monitoring-script2.sh for cron job
Step 1 : Installed nginx services using sudo apt install nginx command
Step 2 : Started nginx using sudo service nginx start command and curl to nginx
Step 3 : Customized the default webpage of nginx with the echo command redirecting the message to the index.nginx-debian.html file of nginx.
Step 4: Curl to nginx
Step 5 : Running the cron job script
Step 6 : In the cron job script which is nginx-monitoring-script2.sh status is monitored using:
    systemctl is-active nginx
Step 7 : On the basis of status value the script will send notification on slack channel
    To send notification to slack webhook url and curl -X POST cmommand is used.
