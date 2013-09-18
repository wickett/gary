#!/usr/bin/env bash

echo "Launching ec2 instance..."
knife ec2 server create -r "recipe[cloud-dev]" -I ami-7d317314 -G default -S gary -N raring-dev-box.10 -f t1.micro
cd ..
