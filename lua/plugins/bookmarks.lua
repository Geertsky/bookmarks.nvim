return {
  'bookmarks',
  dir = 
  function setup(opts)
    local bmpath = opts.bookmarkspath
    if bookmarkspath == nil then
      bmpath = os.getenv( "HOME" ) .. '.bookmarks.lua'
    end
    bookmarks = dofile(bookmarkspath)
    for key,path in pairs(bookmarks) do
      vim.keymap.set('n', '<leader>'..key, ':cd '..path..'<cr>')
    end
  end
}
