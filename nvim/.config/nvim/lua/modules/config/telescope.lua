return function()
  local telescope = safe_require 'telescope'
  if not telescope then
    return
  end

  local actions = require 'telescope.actions'

  telescope.setup {
    defaults = {
      layout_config = { horizontal = { preview_width = 0.5 } },
      file_ignore_patterns = { 'node_modules/.*', '%.env' },
      mappings = {
        i = {
          ['<C-j>'] = actions.move_selection_next,
          ['<C-k>'] = actions.move_selection_previous,
        },
        n = { ['<C-c>'] = actions.close },
      }
    },
    extensions = {
      fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
      }
    }
  }

  telescope.load_extension('fzf')
end
