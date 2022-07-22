local base = require('lsp-config.languages.base')

require'lspconfig'.hie.setup{
    on_attach = base.on_attach,
    capabilities = base.capabilities(),
}
