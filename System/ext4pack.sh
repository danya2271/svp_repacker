#!/bin/bash
mkdir smnt.ext4
sudo dd if=/dev/zero of=system.ext4.img bs=4k count=410000
sudo mkfs.ext4 system.ext4.img
sudo tune2fs -c0 -i0 system.ext4.img
sudo mount -o loop system.ext4.img ./smnt.ext4/
sudo cp -v -r -p smnt/* smnt.ext4/
sync
