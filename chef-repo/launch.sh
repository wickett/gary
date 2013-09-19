#!/usr/bin/env bash
if [ -z "$1" ]; then
  echo "Usage: ./launch.sh [node_name]"
  exit
fi
  
echo "Updating cookbooks"
librarian-chef update

echo "Uploading cookbooks"
knife cookbook upload -a

echo "Launching ec2 instance..."
knife ec2 server create -r "recipe[cloud-dev]" -I ami-7d317314 -G default -S gary -N $1 -f t1.micro
