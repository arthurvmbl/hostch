#!/bin/bash
echo 'You must run as sudo!'
echo 'Usage: ./hostch.sh <IP>'

#echo Usage: ./hostch.sh <IP>

$1
tab='	'

#making the curl request and selecting anything between slashes
curl -I $1 | grep -oP '(?<=/)[^/]+(?=/)' > dom

echo ''
echo "Writing your newfound host..."

#echo appending to /etc/hosts
echo "$1$tab$(cat dom)" >> /etc/hosts

echo ''
echo "Done!"
echo ''
echo "You can access here http://$(cat dom)/"

#cleaning
rm dom
