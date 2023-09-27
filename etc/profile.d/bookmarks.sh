#!/bin/bash
#GG: lua commando after "done" first expands package.path to where bookmarks.lua lies.
#GG: then it imports bookmarks and store the result in t (a table is returned)
#GG: Then it loops through this table and prints key, value
#GG: the while loop reads the variables k and v, checks if the alias is already present and sets it when not.
if [ -f ~/.config/nvim/lua/plugins/bookmarks/bookmarks.lua ]; then
	export LUA_PATH="$(readlink -e ~/.config/nvim/lua/plugins/bookmarks)/?.lua;;"
	while read k v; do
	    if ! alias "gg""$k" >/dev/null 2>&1; then
	        alias "gg""$k"="cd $v";
	    fi
	done<<<$(lua -e 't=require "bookmarks" for k,v in pairs(t) do print(k,v) end')
fi
