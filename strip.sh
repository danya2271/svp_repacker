#!/bin/bash
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/bin/surfaceflinger
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/bin/storaged
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/bin/gpuservice
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/bin/bootanimation
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/lib/hw/*
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/system_ext/lib/*
sudo ./bin/aarch64-linux-gnu-strip ./smnt/system/system_ext/bin/*
sudo ./bin/aarch64-linux-gnu-strip ./pmnt/lib/*
sudo ./bin/aarch64-linux-gnu-strip ./pmnt/bin/*