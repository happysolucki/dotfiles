local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local function conf(name)
  return require(string.format('bk.%s', name))
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'mattn/emmet-vim'
  use 'rmehri01/onenord.nvim'
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'
  use {'sainnhe/edge', 'sainnhe/everforest', 'folke/tokyonight.nvim'}
  use 'windwp/nvim-autopairs'
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'numToStr/Comment.nvim',
    requires = 'JoosepAlviste/nvim-ts-context-commentstring',
    config = conf 'comment'
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = conf 'indent-blankline'
  }
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = conf 'telescope'
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'nvim-lualine/lualine.nvim',
    config = conf 'lualine'
  }
  use { 'romgrk/barbar.nvim' }
  use {
    'ms-jpq/chadtree',
    branch = 'chad',
    run = 'python3 -m chadtree deps'
  }
  use {
    "akinsho/toggleterm.nvim",
    config = conf "toggleterm"
  }
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
