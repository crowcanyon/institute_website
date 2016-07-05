#!/bin/bash
## Deploy

mkdir /Volumes/institute/
mount_smbfs smb://$1:$2@www/institute/ /Volumes/institute/
rsync -rv --size-only --delete ./_site/ /Volumes/institute/
umount /Volumes/institute/