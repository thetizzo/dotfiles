-- Enable line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tab size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable vim swap files and backups but give Undotree access to full backup history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable highlighting of all search terms in file
vim.opt.hlsearch = false
-- Highlight current search term while typing
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Ensure there are never less than 8 lines shown at the bottom of the window while scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Highlights column to show screen width
vim.opt.colorcolumn = "100"

-- Set space as <leader> for keymaps
vim.g.mapleader = " "

