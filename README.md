# bookmarks.nvim
Bookmarks.nvim is repository just to tryout writing nvim plugins.
The idea is to have one location where `bookmarks` are defined. This file is used to define keymaps in neovim to change directory to the `<path>` when `<leader><alias>` is typed. The same file is used for defining, optionally prefixed aliases in bash to change directory to `<path>`.
The `bookmarks.nvim` nvim plugin is meant to be used in combination with the [bookmarks.bash](https://github.com/Geertsky/bookmarks.bash) script. 
# Installation
For Lazy.nvim add the following to your `init.lua`:

```
{
    'Geertsky/bookmarks.nvim',
    opts = {
      bookmarkspath = '/home/geert/.bookmarks.lua',
    },
    init = function()
      require('bookmarks').setup()
    end,
  },
```

The option `bookmarkspath` points to the lua file containing the `<alias>=<path>` bookmarks table.

## bookmarks.lua
The `bookmarks.lua` returns a table of `<alias>=<path>` pairs. 
A minimal example:
The lua bookmarks file retuns a table of `<alias>=<path>` pairs.
```
return {
  ce='/etc',
  ch='/home',
}
```

# Configuration
In the `bookmarks.nvim` plugin knows one option:
|option         |Description                                                        |
|---------------|-------------------------------------------------------------------|
|`bookmarkspath`|Points to the lua file containing the table with aliases for paths.|
