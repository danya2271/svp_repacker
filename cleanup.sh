#!/bin/bash
rm ./img2sdat/system.new.dat.br
rm ./img2sdat/system.patch.dat
rm ./img2sdat/system.transfer.list
rm ./img2sdat/vendor.new.dat.br
rm ./img2sdat/vendor.patch.dat
rm ./img2sdat/vendor.transfer.list
rm ./img2sdat/product.new.dat.br
rm ./img2sdat/product.patch.dat
rm ./img2sdat/product.transfer.list
rm ./erofsout/system.new.dat.br
rm ./erofsout/system.patch.dat
rm ./erofsout/system.transfer.list
rm ./erofsout/vendor.new.dat.br
rm ./erofsout/vendor.patch.dat
rm ./erofsout/vendor.transfer.list
rm ./erofsout/product.new.dat.br
rm ./erofsout/product.patch.dat
rm ./erofsout/product.transfer.list
rm ./img2sdat/vendor.new.dat
rm ./img2sdat/vendor.img
rm ./img2sdat/system.new.dat
rm ./img2sdat/system.img
rm ./img2sdat/product.new.dat
rm ./img2sdat/product.img
rm ./ext4out/system.new.dat.br
rm ./ext4out/system.patch.dat
rm ./ext4out/system.transfer.list
rm ./ext4out/vendor.new.dat.br
rm ./ext4out/vendor.patch.dat
rm ./ext4out/vendor.transfer.list
rm ./ext4out/product.new.dat.br
rm ./ext4out/product.patch.dat
rm ./ext4out/product.transfer.list
rm -r ./img2sdat/vendor.ext4.img
rm -r ./img2sdat/system.ext4.img
rm -r ./img2sdat/product.ext4.img
rm -r ./img2sdat/vendor.erofs.img
rm -r ./img2sdat/system.erofs.img
rm -r ./img2sdat/product.erofs.img
rm ./System/system.img
rm ./System/system.new.dat.br
rm ./System/system.new.dat
rm ./System/system.patch.dat
rm ./System/system.transfer.list
rm ./Vendor/vendor.img
rm ./Vendor/vendor.new.dat.br
rm ./Vendor/vendor.new.dat
rm ./Vendor/vendor.patch.dat
rm ./Vendor/vendor.transfer.list
rm ./Product/product.img
rm ./Product/product.new.dat.br
rm ./Product/product.new.dat
rm ./Product/product.patch.dat
rm ./Product/product.transfer.list
sudo umount vmnt
sudo umount smnt
sudo umount pmnt
sudo umount ./Product/pmnt
sudo umount ./System/smnt
sudo umount ./Vendor/vmnt