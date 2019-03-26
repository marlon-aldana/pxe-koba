#/bin/bash
#Marlon Farid Aldana Hernandez
#tar -xvf Tumbleweed64.x86_64-1.0.install.tar.xz
COMMAND='rsync -stat --progress'
IMAGE= 'image_www'
$COMMAND image/pxeboot.initrd.xz boot/initrd
$COMMAND image/pxeboot.kernel  boot/linux

$COMMAND image/Tumbleweed64.xz htdocs/
$COMMAND image/Tumbleweed64.md5 htdocs/

$COMMAND image/pxeboot.kernel htdocs/Tumbleweed64.kernel
$COMMAND image/Tumbleweed64.initrd  htdocs/
