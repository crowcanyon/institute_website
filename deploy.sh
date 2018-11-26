#!/bin/bash
## Deploy

find . -name '.DS_Store' -type f -delete
find . -name 'Icon*' -type f -delete

mkdir ~/institute/
mount_smbfs //$1:$2@www/LiveWebsite/institute/ ~/institute/
rsync -rv --size-only --delete ./_site/ ~/institute/
umount ~/institute/
rm -r ~/institute/