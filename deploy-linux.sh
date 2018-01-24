#!/bin/bash
## deploy-linux

sudo mount -t cifs -o vers=3.0,username=administrator //www/institute /Volumes/institute
sudo rsync -rv --size-only --delete ./_site/ /Volumes/institute/
sudo umount /Volumes/institute/
