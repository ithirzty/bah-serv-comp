#!/bin/bash
# Moving std-libs
cd /bah
cd ./installer
mkdir /opt/bah
mkdir /opt/bah/libs/
mkdir /opt/bah/libs/linux/
mkdir /opt/bah/libs/windows/
mkdir /opt/bah/libs/darwin/
cp -r ./libs/linux/libs/* /opt/bah/libs/linux/
cp -r ./libs/windows/libs/* /opt/bah/libs/windows/
cp -r ./libs/linux/libs/* /opt/bah/libs/darwin/
cp ./libs/common/* /opt/bah/
chmod 777 /opt/bah/*

# Moving bah exec
cp ../bin/linux_amd64 /opt/bah/bah
cp -s /opt/bah/bah /bin/bah
chmod 777 /opt/bah
chmod +x /bin/bah

# Making the update script executable
cd ../