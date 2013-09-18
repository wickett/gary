#!/usr/bin/env bash


echo "Launching ec2 instance..."
cd ./chef-repo
knife ec2 server create -r "role[gary]" -I ami-1b135e72 -G default -S gary -N dev-box.6 -f t1.micro
cd ..
