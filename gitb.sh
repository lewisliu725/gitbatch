#!/bin/bash
# remember username and password to avoid entering every time
git config --global credential.helper store
# count the total directories that exec the command
TOTAL_NUM=0
# traversal all files and directories in current directory, find directories which contain .git
for dir in `ls`; do
  if [ -d "$dir/.git" ];
  then
    cd $dir
    TOTAL_NUM=`expr $TOTAL_NUM + 1`
    echo ---------------------$dir---------------------
    git $*
    echo ""
    cd ..
  fi
done
echo "Total $TOTAL_NUM directories completed!!"
