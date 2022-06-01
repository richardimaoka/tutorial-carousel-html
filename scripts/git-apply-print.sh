#!/bin/sh

cd "$(dirname "$0")" || exit 
cd ../ || exit # cd to the git repository root

git log --oneline --reverse 915876d | sed -r 's/(^\w+\b)/git apply patches\/\1.patch #/'

# git apply patches/db47c7f.patch # initial HTML
# git apply patches/365ac03.patch # add images
# git apply patches/cd0b584.patch # display: flex
# git apply patches/ca39bc3.patch # overflow-x: auto
# git apply patches/392ba1b.patch # add barebone buttons
# git apply patches/dc7e1df.patch # button links
# git apply patches/f1a8c6b.patch # smooth scrolling
# git apply patches/f05034a.patch # hide scroll bar
# git apply patches/bbbc003.patch # centering buttons
# git apply patches/915876d.patch # decorate buttons