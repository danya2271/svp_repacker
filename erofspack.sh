#!/bin/bash
sudo mkfs.erofs -d0 -zlz4 ./img2sdat/system.erofs.img smnt
sudo mkfs.erofs -d0 -zlz4 ./img2sdat/vendor.erofs.img vmnt
sudo mkfs.erofs -d0 -zlz4 ./img2sdat/product.erofs.img pmnt
img2simg ./img2sdat/vendor.erofs.img ./img2sdat/vendor.img
img2simg ./img2sdat/system.erofs.img ./img2sdat/system.img
img2simg ./img2sdat/product.erofs.img ./img2sdat/product.img
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
mkdir erofsout
rm ./erofsout/system.new.dat.br
rm ./erofsout/system.patch.dat
rm ./erofsout/system.transfer.list
rm ./erofsout/vendor.new.dat.br
rm ./erofsout/vendor.patch.dat
rm ./erofsout/vendor.transfer.list
rm ./erofsout/product.new.dat.br
rm ./erofsout/product.patch.dat
rm ./erofsout/product.transfer.list
cp ./img2sdat/system.new.dat.br ./erofsout/system.new.dat.br
cp ./img2sdat/system.patch.dat ./erofsout/system.patch.dat
cp ./img2sdat/system.transfer.list ./erofsout/system.transfer.list
cp ./img2sdat/product.new.dat.br ./erofsout/product.new.dat.br
cp ./img2sdat/product.patch.dat ./erofsout/product.patch.dat
cp ./img2sdat/product.transfer.list ./erofsout/product.transfer.list
cp ./img2sdat/vendor.new.dat.br ./erofsout/vendor.new.dat.br
cp ./img2sdat/vendor.patch.dat ./erofsout/vendor.patch.dat
cp ./img2sdat/vendor.transfer.list ./erofsout/vendor.transfer.list
rm ./img2sdat/system.new.dat.br
rm ./img2sdat/system.patch.dat
rm ./img2sdat/system.transfer.list
rm ./img2sdat/vendor.new.dat.br
rm ./img2sdat/vendor.patch.dat
rm ./img2sdat/vendor.transfer.list
rm ./img2sdat/product.new.dat.br
rm ./img2sdat/product.patch.dat
rm ./img2sdat/product.transfer.list