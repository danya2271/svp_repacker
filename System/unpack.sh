#!/bin/bash
brotli -d system.new.dat.br
./sdat2img.py system.transfer.list system.new.dat system.img
mkdir smnt
sudo mount system.img smnt -o rw