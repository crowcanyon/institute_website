#!/bin/zsh
## Deploy

bash rebuild.sh

find . -name '.DS_Store' -type f -delete
find . -name 'Icon*' -type f -delete

mkdir ~/institute/
mount_smbfs //$ccac_un:$ccac_pw@www.crowcanyon.org/LiveWebsite/institute/ ~/institute/
rsync -rv --size-only --delete ./docs/ ~/institute/
umount ~/institute/
rm -r ~/institute/