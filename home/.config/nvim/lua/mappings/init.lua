local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

map('i', 'jj', '<ESC>:w<CR>', {})
map('n', '<C-j>', ':m .+1<cr>==', {noremap = true})
map('n', '<C-k>', ':m .-2<cr>==', {noremap = true})
map('v', '<C-j>', ":m '>+1<cr>gv=gv", {noremap = true})
map('v', '<C-k>', ":m '<-2<cr>gv=gv", {noremap = true})

map('', '<leader><leader>', '<cmd>Telescope find_files<cr>', {noremap = true})
map('', '<leader>g', '<cmd>Telescope live_grep<cr>', {noremap = true})
