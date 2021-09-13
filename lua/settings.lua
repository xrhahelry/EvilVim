local o = vim.o
local exec = vim.api.nvim_exec
local cmd = vim.cmd

-- General
o.mouse = 'a'
o.clipboard = "unnamedplus"
o.swapfile = false

-- Ui and Editor
o.syntax = 'enable'
o.nu = true
o.rnu = true
o.showmatch = true
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.splitbelow = true
o.splitright = true
o.autochdir = true
o.cursorline = true
o.ignorecase = true
o.smartcase = true
o.foldmethod = 'marker'
o.colorcolumn = '100'
o.wrap = false
o.pumheight = 25
o.background = "dark"

-- Colorscheme
o.termguicolors = true
cmd[[colorscheme dracula]]

-- Memory and CPU
o.hidden = true
o.backup = false
o.writebackup =  false
o.updatetime = 300
o.timeoutlen = 100
o.history = 100
o.lazyredraw = true
o.synmaxcol = 240

-- Tabs and Indent
o.tabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.showtabline = 2

-- Statustine
o.ruler = false
o.cmdheight = 2
o.laststatus = 2
o.showmode = false

-- Autocompletion
o.completeopt = 'menuone,noselect,noinsert'
o.shortmess = 'c'

-- Remove whitespace on save
cmd[[au BufWritePre * :%s/\s\+$//e]]

-- Highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)
