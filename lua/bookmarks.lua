local M = {}
M.config = {
  bookmarkspath = os.getenv("HOME") .. '/.bookmarks.lua',
}
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
  local bookmarks = dofile(M.config.bookmarkspath)
  for key, path in pairs(bookmarks) do
    local kf = key:sub(2)
    vim.keymap.set('n', '<leader>' .. key, ':cd ' .. path .. '<cr>',
      { desc = '[C]d ' .. path:gsub('/' .. kf, '/[' .. string.upper(kf) .. ']', 1) })
  end
end

return M
