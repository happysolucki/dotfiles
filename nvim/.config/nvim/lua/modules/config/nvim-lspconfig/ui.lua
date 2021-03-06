local M = {}

local function symbols_override()
  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end
end

-- local function disable_virtual_text()
--   vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics,
--     { virtual_text = false, signs = true, underline = true, update_in_insert = true }
--   )
-- end

local is_virtual_text_active = true
function M.toggle_virtual_text()
  if is_virtual_text_active == true then
    is_virtual_text_active = false
    vim.lsp.diagnostic.clear(0)
  else
    is_virtual_text_active = true
    vim.lsp.diagnostic.redraw(0)
  end
end

function M.setup()
  symbols_override()
end

return M
