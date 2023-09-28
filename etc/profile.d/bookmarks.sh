#!/bin/bash
BOOKMARKSPATH=/home/geert/.bookmarks.lua
PREFIX="gg"
while read k v; do
   if ! alias "$PREFIX""$k" >/dev/null 2>&1; then
       alias "$PREFIX""$k"="cd $v";
   fi
done<<<$(lua -e 't=dofile("'$BOOKMARKSPATH'") for k,v in pairs(t) do print(k,v) end')
