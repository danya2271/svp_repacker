#!/bin/bash
cp ./Vendor/vendor.img ./img2sdat/vendor.ext4.img
cp ./Product/product.img ./img2sdat/product.ext4.img
cp ./System/system.img ./img2sdat/system.ext4.img
img2simg ./img2sdat/vendor.ext4.img ./img2sdat/vendor.img
img2simg ./img2sdat/system.ext4.img ./img2sdat/system.img
img2simg ./img2sdat/product.ext4.img ./img2sdat/product.img
./img2sdat/img2sdat.py ./img2sdat/vendor.img -p ./img2sdat/vendor -v 4
./img2sdat/img2sdat.py ./img2sdat/system.img -p ./img2sdat/system -v 4
./img2sdat/img2sdat.py ./img2sdat/product.img -p ./img2sdat/product -v 4
brotli ./img2sdat/vendor.new.dat -6
brotli ./img2sdat/system.new.dat -4
brotli ./img2sdat/product.new.dat -4
rm ./img2sdat/vendor.new.dat
rm ./img2sdat/vendor.img
rm ./img2sdat/system.new.dat
rm ./img2sdat/system.img
rm ./img2sdat/product.new.dat
rm ./img2sdat/product.img
mkdir ext4out
rm ./ext4out/system.new.dat.br
rm ./ext4out/system.patch.dat
rm ./ext4out/system.transfer.list
rm ./ext4out/vendor.new.dat.br
rm ./ext4out/vendor.patch.dat
rm ./ext4out/vendor.transfer.list
rm ./ext4out/product.new.dat.br
rm ./ext4out/product.patch.dat
rm ./ext4out/product.transfer.list
cp ./img2sdat/system.new.dat.br ./ext4out/system.new.dat.br
cp ./img2sdat/system.patch.dat ./ext4out/system.patch.dat
cp ./img2sdat/system.transfer.list ./ext4out/system.transfer.list
cp ./img2sdat/product.new.dat.br ./ext4out/product.new.dat.br
cp ./img2sdat/product.patch.dat ./ext4out/product.patch.dat
cp ./img2sdat/product.transfer.list ./ext4out/product.transfer.list
cp ./img2sdat/vendor.new.dat.br ./ext4out/vendor.new.dat.br
cp ./img2sdat/vendor.patch.dat ./ext4out/vendor.patch.dat
cp ./img2sdat/vendor.transfer.list ./ext4out/vendor.transfer.list
rm ./img2sdat/system.new.dat.br
rm ./img2sdat/system.patch.dat
rm ./img2sdat/system.transfer.list
rm ./img2sdat/vendor.new.dat.br
rm ./img2sdat/vendor.patch.dat
rm ./img2sdat/vendor.transfer.list
rm ./img2sdat/product.new.dat.br
rm ./img2sdat/product.patch.dat
rm ./img2sdat/product.transfer.list