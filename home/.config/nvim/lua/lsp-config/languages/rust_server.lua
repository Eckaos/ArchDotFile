local base = require('lsp-config.languages.base')

local opts = {
    tools = {
        autoSetHints = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = '',
            other_hints_prefix = '',
        },
    },
    server = {
        on_attach = base.on_attach,
        capabilities = base.capabilities(),
        settings = {
            ['rust-analyzer'] = {
                checkOnSave = {
                    command = 'clippy'
                },
            }
        }
    }
}

require('rust-tools').setup(opts)

--[[require'lspconfig'.rust_analyzer.setup{
    on_attach = base.on_attach,
    capabilities = base.capabilities(),
}]]
