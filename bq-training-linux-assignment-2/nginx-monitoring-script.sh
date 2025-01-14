#!bin/bash


#Part 1: Nginx server cinfigurating script

#install nginx
brew update
brew install nginx
curl http://127.0.0.1:8080

#update the content of default home page
echo "<html><body><h4>Welcome to the advanced Linux training module.</h4><h4>Learning by doing is the key to mastery</h4></body></html>" > /opt/homebrew/Cellar/nginx/1.27.3/html/index.html
curl http://127.0.0.1:8080


#Part 2: Nginx monitoring script

#Monitor the status of nginx server evary 2 minutes
st=$(brew services list | grep nginx | awk '{print $2}')

while [ true ]
do

cur_st=$(brew services list | grep nginix | awk '{print $2}')
if [ "$cur_st" = "$st" ]
then
continue

elif [ "$cur_st" = "STARTED" ]
then

elif [ "$cur_st" = "STOPPED" ]
then


fi           
 
done
