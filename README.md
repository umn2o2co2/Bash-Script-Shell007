# Bash-Script-Shell007
A bash script that runs in the background and send screenshots of the users screen to an ftp server


Shell007 is a spysoftware which can be used by anyone who often lends their laptops to others and constantly worries about what the person may be doing on his system. Shell007 is a simple shell script which will allow you to take screenshots of your laptop screen at regular time intervals and upload it on a web server which can be remotely accessed by any other mobile or computer device. By this one can moniter what is happening on his system. 

How the code works:
First, we create a directory names screenshot and add the path t the directory in path variable. We create a date-stamp for every screenshot using the date command. The screenshot is captured using the ‘scrot’ command. We then zip the folder containing the screenshot using the zip command. Finally, we send the screenshot to an ftp server using the ‘curl’ command where it is stored with date-stamp as filename. The bash script runs in the background every few minutes and keeps sending screenshots without notifying the person operating the computer. After successfully sending the screenshot we then delete the local copy of the file so that the user doesn’t realize that we are taking the screenshots.
We have used nohup /home/osboxes/Desktop/OS.sh > /dev/null 2>&1 & to run the bash script as a background process.

