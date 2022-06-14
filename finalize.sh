#!/usr/bin/zsh
# /usr/bin/git --git-dir=/home/braden/.cfg/ --work-tree=/home/braden checkout 2>&1 | egrep '\s+\.' | awk {'print '} | xargs -I{} mv {} .config-backup/{}
/usr/bin/git --git-dir=/home/braden/.cfg/ --work-tree=/home/braden config --local status.showUntrackedFiles no 
/usr/bin/git --git-dir=/home/braden/.cfg/ --work-tree=/home/braden status 
/usr/bin/git --git-dir=/home/braden/.cfg/ --work-tree=/home/braden restore ../.config/terminator/config ../.zshrc 
