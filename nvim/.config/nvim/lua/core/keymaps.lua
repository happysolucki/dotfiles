local map = require('core.utils').keymap.map

vim.g.mapleader = ' '
map('n', '<leader>', '<Nop>')
map('x', '<leader>', '<Nop>')

map('n', 'Y', 'y$')

-- Telescope
if is_git_dir == 0 then
  map('n', '<C-p>', '<cmd>lua require"telescope.builtin".git_files()<CR>')
else
  map('n', '<C-p>', '<cmd>lua require"telescope.builtin".find_files()<CR>')
end
map('n', '<space>fb', '<cmd>Telescope buffers theme=get_dropdown<CR>')
map('n', '<space>fh', '<cmd>lua require"telescope.builtin".help_tags()<CR>')
map('n', '<space>fo', '<cmd>lua require"telescope.builtin".oldfiles()<CR>')
map('n', '<space>fw', '<cmd>lua require"telescope.builtin".live_grep()<CR>')

map('n', '<A-,>', ':BufferPrevious<CR>', { noremap = true, silent = true })
map('n', '<A-.>', ':BufferNext<CR>', { noremap = true, silent = true })
map('n', '<A-<>', ':BufferMovePrevious<CR>', { noremap = true, silent = true })
map('n', '<A->>', ':BufferMoveNext<CR>', { noremap = true, silent = true })
map('n', '<A-c>', ':BufferClose<CR>', { noremap = true, silent = true })
