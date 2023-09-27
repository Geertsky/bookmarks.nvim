# bookmarks
A bash/nvim shared bookmarks plugin
Pretty much just to try and write a lua plugin.

It features a lua file returning a table of key valua pairs. In nvim the plugin goes trough this list to set keybinding, in /etc/profile.d/bookmarks.sh it goes through the same list defining aliasses with an optional prefix for tab completion.

The lua bookmarks file retuns a table of `<alias>=<path>` pairs.

On the nvim side the bookmarks plugin contains a `setup(opts)` function. Where opts.bookmarkspath can be set to the full-path of the lua bookmarks file. It defaults to `~/.bookmarks.lua`. The plugin defines keymaps of `<leader><alias>` to `:cd <path>`.
On the bash profile side the `bookmarks.sh` script goes through the same table of `<alias>=<path>` pairs an defines aliases for a cd to those `<path>`s with an optional prefix. (I prefer to prefix all my functions, aliases, binaries with "gg" in sake of tab-completion...)
