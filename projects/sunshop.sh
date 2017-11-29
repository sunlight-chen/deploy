#!/bin/bash
 
WEB_PATH='/home/wwwroot/sunshop/'
WEB_PATH_CLIENT='/home/wwwroot/sunshop/client'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment shudong.wang"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
cd $WEB_PATH_CLIENT
npm run build
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH_CLIENT
echo "Finished."
