#!/bin/bash

# what's today's date?
datestamp=$(date +%Y%m%d)

echo Enter site URL \(e.g., \"https://www.stanford.edu\"\):
read url

echo Enter destination directory \(e.g., \"/afs/ir/group/mygroup/WWW/\"\):
read destination

read -p "You are about to make a static copy of $url at $destination. Hit Enter to continue..."

# wget it!
wget -P $destination -mpck --user-agent="" -e robots=off --wait 1 -E $url

