-- Indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.scrolloff = 8

-- Colorscheme
vim.cmd.colorscheme "catppuccin-frappe"
vim.opt.termguicolors = true
-- vim.opt.colorcolumn = "80"

-- Cursor
vim.opt.guicursor = ""

-- Cursor line
vim.opt.cursorline = true

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Line wrapping
vim.opt.wrap = false
