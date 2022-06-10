-- Set leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

local key = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- ESC is fucking trash
key('i', 'jk', '<ESC>', opts)
key('i', 'kj', '<ESC>', opts)
key('v', 'jk', '<ESC>', opts)
key('v', 'kj', '<ESC>', opts)

-- Resizing windows
key('n', '<M-j>', ':resize -3<CR>', opts)
key('n', '<M-k>', ':resize +3<CR>', opts)
key('n', '<M-l>', ':vertical resize -3<CR>', opts)
key('n', '<M-h>', ':vertical resize +3<CR>', opts)

-- Better window navigation
key('n', '<Leader>wh', '<C-w>h', { silent = true})
key('n', '<Leader>wj', '<C-w>j', { silent = true})
key('n', '<Leader>wk', '<C-w>k', { silent = true})
key('n', '<Leader>wl', '<C-w>l', { silent = true})

-- Move block of text in visual mode
key('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
key('x', 'J', ':move \'>+1<CR>gv-gv\'', opts)

-- Page up and down
key('n', 'n', '<C-d>', opts)
key('n', 'm', '<C-u>', opts)

-- Buffer
key('n', '<Leader>bn', ':bnext<CR>', opts)
key('n', '<Leader>bp', ':bprevious<CR>', opts)
key('n', '<Leader>bk', ':bdelete<CR>', opts)

-- Line movement
key('n', 'H', '^', opts)
key('n', 'L', '$', opts)
key('v', 'H', '^', opts)
key('v', 'L', '$', opts)

-- Better splits
key('n', '<Leader>sv', ':vsplit<cr>', { silent = true})
key('n', '<Leader>sh', ':split<cr>', { silent = true})
