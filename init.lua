vim.o.showmatch = true
vim.o.ignorecase = true
vim.o.mouse = 'v'
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.wo.number = true
vim.o.wildmode = 'longest,list'
vim.wo.colorcolumn = '0'
vim.api.nvim_command('hi MatchParen cterm=none ctermfg=none ctermbg=none')
vim.api.nvim_command('filetype plugin indent on')
vim.api.nvim_command('syntax on')
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.api.nvim_command('filetype plugin on')
vim.o.ttyfast = true
vim.o.swapfile = false
vim.o.backupdir = '~/.cache/vim'

require('pluginsinit')
require('lspinit')
require('compeinit')



vim.api.nvim_set_keymap('n', '<Up>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Down>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Left>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Right>', '<NOP>', {noremap = true})

vim.api.nvim_command('colorscheme dracula')
vim.g.NERDTreeQuitOnOpen = 0
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr = true, noremap = true})

vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {noremap = true})
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', {noremap = true})
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', {noremap = true})


vim.cmd([[autocmd TextChanged,TextChangedI <buffer> silent write]])


-- load scrit
vim.api.nvim_command('syntax on')
vim.api.nvim_command('au BufRead,BufNewFile *.scrit set filetype=scrit')
vim.api.nvim_command('au FileType scrit source ' .. vim.fn.stdpath('config') .. '/scrit.vim')