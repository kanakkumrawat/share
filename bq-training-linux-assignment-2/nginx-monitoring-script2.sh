#!/bin/bash

#Part 2: Nginx server monitoring script

#slack webhook
web_url="https://hooks.slack.com/services/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"

#check current status of nginx service

cur_st=$(systemctl is-active nginx)

if [ "$cur_st"="active" ]
then 
        curl -X POST --data-urlencode "payload={\"channel\": \"#budget\", \"username\": \"Info:\", \"text\": \"The Nginx service has started running on http://172.31.22.25.\", \"icon_emoji\": \":ghost:\"}"  $web_url

elif [ "$cur_st"="inactive"]

        curl -X POST --data-urlencode "payload={\"channel\": \"#budget\", \"username\": \"Alert:\", \"text\": \"The Nginx service has started running on http://172.31.22.25. Immediate attention required.\", \"icon_emoji\": \":ghost:\"}"  $web_url

fi