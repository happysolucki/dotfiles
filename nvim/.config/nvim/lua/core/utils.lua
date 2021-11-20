local M = {}

function _G.is_git_dir()
  return os.execute 'git rev-parse --is-inside-work-tree >> /dev/null 2>&1'
end

M.keymap = {}

local options = { noremap = true, silent = true }

function M.keymap.buf_map(mode, key, cmd, opts)
  vim.api.nvim_buf_set_keymap(0, mode, key, cmd, opts or options)
end

function M.keymap.map(mode, key, cmd, opts)
  vim.api.nvim_set_keymap(mode, key, cmd, opts or options)
end

return M
