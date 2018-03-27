#!/bin/bash
## Deploy

mkdir ~/institute/
mount_smbfs //$1:$2@www/institute/ ~/institute/
rsync -rv --size-only --delete ./_site/ ~/institute/
umount ~/institute/
rm -r ~/institute/