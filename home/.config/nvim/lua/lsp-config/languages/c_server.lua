local base = require('lsp-config.languages.base')

require'lspconfig'.clangd.setup {
    on_attach = base.on_attach,
    capabilities = base.capabilities(),
}
