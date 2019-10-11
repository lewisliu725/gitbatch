#!/bin/bash

# Remember username and password
git config --global credential.helper store

# Count the total affected directories
TOTAL_NUM=0

# Traversal all items in current directory, find directories which contains .git
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

echo "Total $TOTAL_NUM directories completed."
