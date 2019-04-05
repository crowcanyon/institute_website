#!/bin/bash
## Deploy

bash rebuild.sh

find . -name '.DS_Store' -type f -delete
find . -name 'Icon*' -type f -delete

mkdir ~/institute/
mount_smbfs //$ccac_un:$ccac_pw@www/LiveWebsite/institute/ ~/institute/
rsync -rv --size-only --delete ./_site/ ~/institute/
umount ~/institute/
rm -r ~/institute/