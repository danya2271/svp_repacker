#!/bin/bash
print Unpacking system image
brotli -d ./System/system.new.dat.br
./System/sdat2img.py System/system.transfer.list System/system.new.dat System/system.img
mkdir smnt
sudo mount ./System/system.img smnt -o rw
print Unpacking product image
brotli -d ./Product/product.new.dat.br
./Product/sdat2img.py Product/product.transfer.list Product/product.new.dat Product/product.img
mkdir pmnt
sudo mount ./Product/product.img pmnt -o rw
print Unpacking vendor image
brotli -d ./Vendor/vendor.new.dat.br
./Vendor/sdat2img.py Vendor/vendor.transfer.list Vendor/vendor.new.dat Vendor/vendor.img
mkdir vmnt
sudo mount ./Vendor/vendor.img vmnt -o rw