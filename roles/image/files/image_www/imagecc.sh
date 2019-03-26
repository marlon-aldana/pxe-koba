#/bin/bash
#Marlon Farid Aldana Hernandez
#tar -xvf Tumbleweed64.x86_64-1.0.install.tar.xz
COMMAND='rsync -stat --progress'
IMAGE= 'image_www'
$COMMAND image/pxeboot.initrd.xz ../initrd
$COMMAND image/pxeboot.kernel  ../linux

$COMMAND image/Tumbleweed64.xz ../
$COMMAND image/Tumbleweed64.md5 ../

$COMMAND image/pxeboot.kernel ../Tumbleweed64.kernel
$COMMAND image/Tumbleweed64.initrd  ../
