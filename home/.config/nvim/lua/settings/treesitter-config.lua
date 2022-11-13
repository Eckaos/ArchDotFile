require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'lua',
        'c',
        'cpp',
        'rust',
    },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    refactor = {
        highlight_current_scopea = { enable = true },
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "<leader>r",
            },
        },
    },
}
