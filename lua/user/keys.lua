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

-- Move block of text in visual mode
key('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
key('x', 'J', ':move \'>+1<CR>gv-gv\'', opts)

-- Page up and down
key('n', 'n', '<C-d>', opts)
key('n', 'm', '<C-u>', opts)

-- Line movement
key('n', 'H', '^', opts)
key('n', 'L', '$', opts)
key('v', 'H', '^', opts)
key('v', 'L', '$', opts)

-- File finder
key('n', '<leader>.', ':Telescope find_files<cr>', opts)
key('n', '<tab>', ':BufferLineCycleNext<cr>', opts)
