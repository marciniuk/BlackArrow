#!/bin/bash

sleep 0.2
echo "
	Uploading files to GitLab:"
sleep 0.2

if cd ~/BlackArrowGit &>/dev/null; then echo ""; else echo "Fail: cd ~/"; fi
git add .
git commit
git push -u origin master

sleep 0.2
echo "
	Uploading completed, My King!
	"
sleep 0.2
