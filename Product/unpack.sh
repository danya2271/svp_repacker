#!/bin/bash
brotli -d product.new.dat.br
./sdat2img.py product.transfer.list product.new.dat product.img
mkdir pmnt
sudo mount product.img pmnt