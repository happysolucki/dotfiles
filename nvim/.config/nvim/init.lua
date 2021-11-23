-- require 'core.utils'
-- require "bk.nvim-autopairs"
-- require "bk.plugins"
-- require "bk.options"
-- require "bk.nvim-treesitter"
-- require "bk.lsp"
-- require 'core.keymaps'
-- require "bk.colors"
-- vim.cmd 'colorscheme everforest'
require 'core.utils'
require('modules'):init()
require('modules'):load(require 'modules.plugins')
require 'core.options'
require 'core.keymaps'
require 'core.autocmd'
vim.cmd 'colorscheme everforest'
