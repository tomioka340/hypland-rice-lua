#!/bin/bash

sudo mount -o rw /dev/sda1 /mnt/mydrive2/
cd /mnt/mydrive2/home/sanemi/MinecraftSandbox/
firejail --private=/mnt/mydrive2/home/sanemi/MinecraftSandbox/ java -Duser.home=/mnt/mydrive2/home/sanemi/MinecraftSandbox/ -jar SKlauncher-3.2.18.jar