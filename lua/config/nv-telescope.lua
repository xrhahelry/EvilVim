local key = vim.api.nvim_set_keymap

key('n', '<Leader>tf', ':Telescope find_files<CR>', { noremap = true, silent = true })
key('n', '<Leader>tb', ':Telescope buffers<CR>', { noremap = true, silent = true })
key('n', '<Leader>tg', ':Telescope git_commits<CR>', { noremap = true, silent = true })
key('n', '<Leader>tc', ':Telescope colorscheme<CR>', { noremap = true, silent = true })
