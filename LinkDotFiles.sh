#!/bin/bash
# Simple script that is going to remove overlapping dot files from the current users home directory and link the ones that are in this directory.

# Capture necessary variables
User=`whoami`
DotFiles=`ls -A |grep -v -e .git -e LinkDotFiles.sh -e README.md |xargs`
clear
echo "This script needs to be run as a non-root user"
echo "The script will run as this user: $User"
echo "This script also MUST be run in the DotFiles directory"
echo "Countdown to start 5"
sleep 1
echo "Countdown to start 4"
sleep 1
echo "Countdown to start 3"
sleep 1
echo "Countdown to start 2"
sleep 1
echo "Countdown to start 1"
sleep 1
echo "Removing these dot files from your home directory:"
echo $DotFiles
for i in `echo $DotFiles`
do
        echo "Removing $i from $User's home directory"
        rm -rf ~/$i
        echo "Hard linking $i from this directory to $User's home directory"
        ln ./$i ~/
        echo "Done"
done
sleep 1
