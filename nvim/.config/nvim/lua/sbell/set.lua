vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.mapleader = ' '

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.cursorline = true
vim.opt.colorcolumn = '120'

vim.opt.foldlevel = 3

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.winborder = 'rounded'

vim.o.title = true
vim.opt.titlestring = [[%{fnamemodify(getcwd(), ':t')} - %{v:progname}]]
