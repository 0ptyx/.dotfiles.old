-- All standard set options
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.path:append {"**"}
vim.opt.wildignore = {'*.pyc', '*_bulid/', '**/.git'}
vim.opt.nu = true
vim.opt.relativenumber = true 
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true 
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes" -- not sure what this is?

vim.opt.cmdheight = 1
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "


