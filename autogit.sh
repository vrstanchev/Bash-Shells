#! /bin/bash
clear;
echo "You are in:";
pwd;
echo "Paste repo URL:";
read url;
echo "Clone extegral repo:";
git clone $url;
echo "Name of repo directory:";
read rname;
echo "Enter the name of the new file";
read fname;
echo "Create new file";
touch $fname;
echo "Copy new file to repo dir";
cp $fname $rnme;
echo "Access repo directory:";
cd $rname;
echo "Open file with Nano:";
nano $fname;
echo "add files to repo:";
git add . ;
echo "Enter your email:";
read email;
git config --global user.email "$email";
echo "Enter your name:";
read name;
git config --global user.name "$name";
echo "Commit file:";
git commit $fname;
echo "What happend:";
git log;
echo "Msaster root";
git push origin master;
