#!/bin/bash
brotli -d vendor.new.dat.br
./sdat2img.py vendor.transfer.list vendor.new.dat vendor.img
mkdir vmnt
sudo mount vendor.img vmnt