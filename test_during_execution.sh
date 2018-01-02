#!/bin/bash

set -xe

# try to install wget first
# note: we do this only to slow down things and to demonstrate
# that we can do pretty much anything during runtime of the container
yum -y install wget

# try to access the website
wget http://hello-world

# verify that the website serves a Hello World page
curl http://hello-world/ | grep 'Hello World'
