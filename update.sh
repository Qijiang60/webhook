

#!/bin/bash
#web path
WEB_PATH='/www/whyis.me'
WEB_USER='root'
WEB_USERGROUP='root'

#update git file
echo "Start deployment"
cd $WEB_PATH
echo "pulling source code..."
git reset --hard origin/master
git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."
