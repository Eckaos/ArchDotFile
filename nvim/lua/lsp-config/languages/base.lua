local l = {}

local buffer = { buffer = 0 }
local keybind = vim.keymap.set
local lsp = vim.lsp.buf

function l.on_attach()
    keybind('n', 'K', lsp.hover, buffer)
    keybind('n', 'gd', lsp.definition, buffer)
end

function l.capabilities() 
   return require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
end

return l

