local opt = vim.opt

opt.guicursor = ""

opt.relativenumber = true
opt.number = true
opt.scrolloff = 8

opt.tabstop = 4
opt.softtabstop = -1 -- use tabstop
opt.shiftwidth = 0 -- use tabstop
opt.expandtab = true
opt.smartindent = true
opt.shiftround = true

opt.laststatus = 2

opt.autoread = true -- reload file if changed outside vim
opt.updatetime = 50

opt.colorcolumn = "80"

opt.signcolumn = 'yes'
opt.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂,eol:↵'

opt.history = 1000
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false
opt.directory = vim.fn.stdpath('data') .. 'tmp'
opt.undodir = vim.fn.stdpath('data') .. 'undo'

opt.isfname:append("@-@")


opt.splitright = true
opt.splitbelow = true

opt.clipboard = 'unnamedplus'
