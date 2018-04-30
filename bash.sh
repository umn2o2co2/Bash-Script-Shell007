#! /bin/bash
while true;
do
cd /home/osboxes/Desktop/
mkdir screenshot
path="/home/osboxes/Desktop/screenshot"
stamp=`date +%Y%m%d%H%M%S`
cd $path
#sudo apt-get install scrot
scrot $stamp.png

zip -r ../$stamp.zip *
rm screen.png
mv ../$stamp.zip $path
curl -T /home/osboxes/Desktop/screenshot/$stamp.zip ftp://ftp.xyz.com/$stamp.zip -u osproject@xyz.in:"password"
curl -T /home/osboxes/Desktop/screenshot/$stamp.png ftp://ftp.xyz.com/png/$stamp.png -u osproject@xyz.in:"password"
rm -r $path
sleep 5; done
