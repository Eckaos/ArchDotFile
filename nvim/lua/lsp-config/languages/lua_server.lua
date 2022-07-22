local base = require('lsp-config.languages.base')

require'lspconfig'.sumneko_lua.setup {
    on_attach = base.on_attach,
    capabilities = base.capabilities(),
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
