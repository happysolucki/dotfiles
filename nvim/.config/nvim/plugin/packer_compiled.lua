-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/aidful/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/aidful/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/aidful/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/aidful/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/aidful/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n]\0\1\4\0\3\0\0056\1\0\0'\3\1\0B\1\2\0029\1\2\1D\1\1\0\28calculate_commentstring&ts_context_commentstring.internal\frequireN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  chadtree = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  edge = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  everforest = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nù\3\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0004\4\3\0006\5\3\0>\5\1\4=\4\5\0035\4\6\0=\4\a\3B\1\2\0016\1\b\0009\1\t\0015\2\v\0=\2\n\1K\0\1\0\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\6g\bvim\21filetype_exclude\1\4\0\0\thelp\vpacker\20TelescopePrompt\20buftype_exclude\1\0\4\25show_current_context\2\19use_treesitter\2\25space_char_blankline\6 \tchar\aÂ¦\rterminal\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n®\5\0\0\b\0#\00036\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\0035\4\r\0005\5\f\0=\5\14\0045\5\15\0005\6\16\0005\a\17\0=\a\18\6>\6\3\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\4=\4\28\0035\4\29\0004\5\0\0=\5\14\0044\5\0\0=\5\19\0045\5\30\0=\5\21\0045\5\31\0=\5\23\0044\5\0\0=\5\25\0044\5\0\0=\5\27\4=\4 \0034\4\0\0=\4!\0034\4\0\0=\4\"\3B\1\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\4\0\0\14dashboard\rNvimTree\vpacker\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\3\ntheme\15everforest\18icons_enabled\2\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onenord.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/onenord.nvim",
    url = "https://github.com/rmehri01/onenord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nä\2\0\0\6\0\17\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\16\0'\2\14\0B\0\2\1K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\25file_ignore_patterns\1\3\0\0\20node_modules/.*\n%.env\18layout_config\1\0\0\15horizontal\1\0\0\1\0\1\18preview_width\4\0€€€ÿ\3\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nñ\2\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0036\4\5\0009\4\6\0049\4\a\4=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\3B\1\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\nfloat\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\2\20shade_terminals\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/aidful/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0036\4\5\0009\4\6\0049\4\a\4=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\3B\1\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\nfloat\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\2\20shade_terminals\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nä\2\0\0\6\0\17\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\16\0'\2\14\0B\0\2\1K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\25file_ignore_patterns\1\3\0\0\20node_modules/.*\n%.env\18layout_config\1\0\0\15horizontal\1\0\0\1\0\1\18preview_width\4\0€€€ÿ\3\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n®\5\0\0\b\0#\00036\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\0035\4\r\0005\5\f\0=\5\14\0045\5\15\0005\6\16\0005\a\17\0=\a\18\6>\6\3\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\4=\4\28\0035\4\29\0004\5\0\0=\5\14\0044\5\0\0=\5\19\0045\5\30\0=\5\21\0045\5\31\0=\5\23\0044\5\0\0=\5\25\0044\5\0\0=\5\27\4=\4 \0034\4\0\0=\4!\0034\4\0\0=\4\"\3B\1\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\4\0\0\14dashboard\rNvimTree\vpacker\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\3\ntheme\15everforest\18icons_enabled\2\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nù\3\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0004\4\3\0006\5\3\0>\5\1\4=\4\5\0035\4\6\0=\4\a\3B\1\2\0016\1\b\0009\1\t\0015\2\v\0=\2\n\1K\0\1\0\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\6g\bvim\21filetype_exclude\1\4\0\0\thelp\vpacker\20TelescopePrompt\20buftype_exclude\1\0\4\25show_current_context\2\19use_treesitter\2\25space_char_blankline\6 \tchar\aÂ¦\rterminal\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n]\0\1\4\0\3\0\0056\1\0\0'\3\1\0B\1\2\0029\1\2\1D\1\1\0\28calculate_commentstring&ts_context_commentstring.internal\frequireN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
