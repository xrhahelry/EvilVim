local o = vim.o
local exec = vim.api.nvim_exec
local cmd = vim.cmd
local g = vim.g

-- General
o.mouse = 'a'
o.clipboard = "unnamedplus"
o.swapfile = false

-- Ui and Editor
o.syntax = 'enable'
o.nu = true
-- o.rnu = true
o.showmatch = true
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.splitbelow = true
o.splitright = true
o.autochdir = false
o.cursorline = true
o.ignorecase = true
o.smartcase = true
o.foldmethod = 'marker'
o.wrap = false
o.pumheight = 25
o.background = "dark"

-- Colorscheme
o.termguicolors = true
g.material_style = "palenight"
cmd[[colorscheme material]]

-- Cursor
exec([[
  set guicursor=n-v-c-i:block-Cursor
]], false)

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
o.tabstop = 2
o.shiftwidth = 2
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true

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
