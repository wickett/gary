#!/usr/bin/env bash


echo "Launching ec2 instance..."
cd ./chef-repo
knife ec2 server create -r "role[gary]" -I ami-7d317314 -G default -S gary -N raring-dev-box.1 -f t1.micro
cd ..
