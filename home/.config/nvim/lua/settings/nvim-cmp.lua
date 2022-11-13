local cmp = require'cmp'
local lspkind = require('lspkind')
lspkind.init()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(),{ 'i', 'c'}),
        ['<C-y>'] = cmp.config.disable,
        ['<C-e>'] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}),
        ['<CR>'] = cmp.mapping.confirm({select = true}),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 5 },
   }),
   formatting = {
       format = lspkind.cmp_format{
           mode = 'text',
           with_text = true,
           menu = {
               buffer = "[Buf]",
               nvim_lua = "[Lua]",
               nvim_lsp = "[LSP]",
               path = "[Path]",
               lusnip = "[Snippet]",
           }
       },
   },
   experimental = {
       native_menu = false,
       ghost_text = true,
   },
})
