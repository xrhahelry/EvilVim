-- Set leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

local key = vim.api.nvim_set_keymap

-- ESC is fucking trash
key('i', 'jk', '<ESC>', { noremap = true, silent = true })
key('i', 'kj', '<ESC>', { noremap = true, silent = true })
key('v', 'jk', '<ESC>', { noremap = true, silent = true })
key('v', 'kj', '<ESC>', { noremap = true, silent = true })

-- File Explorer
key('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Resizing windows
key('n', '<M-j>', ':resize -3<CR>', { noremap = true, silent = true})
key('n', '<M-k>', ':resize +3<CR>', { noremap = true, silent = true})
key('n', '<M-l>', ':vertical resize -3<CR>', { noremap = true, silent = true})
key('n', '<M-h>', ':vertical resize +3<CR>', { noremap = true, silent = true})

-- Switching buffers
key('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true})
key('n', '<S-TAB>', ':bnext<CR>', { noremap = true, silent = true})

-- Better window navigation
key('n', '<C-h>', '<C-w>h', { silent = true})
key('n', '<C-j>', '<C-w>j', { silent = true})
key('n', '<C-k>', '<C-w>k', { silent = true})
key('n', '<C-l>', '<C-w>l', { silent = true})

-- Move block of text in visual mode
key('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true})
key('x', 'J', ':move \'>+1<CR>gv-gv\'', { noremap = true, silent = true})
