local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

map('i', 'jj', '<ESC>', {})
map('n', '<A-j>', ':m .+1<cr>==', {noremap = true})
map('n', '<A-k>', ':m .-2<cr>==', {noremap = true})
map('v', '<A-j>', ":m '>+1<cr>gv=gv", {noremap = true})
map('v', '<A-k>', ":m '<-2<cr>gv=gv", {noremap = true})

map('', '<leader><leader>', '<cmd>Telescope find_files<cr>', {noremap = true})
map('', '<leader>g', '<cmd>Telescope live_grep<cr>', {noremap = true})
