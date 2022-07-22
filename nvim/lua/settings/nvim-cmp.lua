local cmp = require'cmp'

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
       with_text = true,
       menu = {
           buffer = "[buf]",
           nvim_lua = "[Lua]",
           nvim_lsp = "[LSP]",
           path = "[path]",
           lusnip = "[snip]",
       }
   },
   experimental = {
       native_menu = false,
       ghost_text = true,
   },
})
