local key = vim.api.nvim_set_keymap

key('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
key('n', '<Leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true })
key('n', '<Leader>g', ':Telescope git_commits<CR>', { noremap = true, silent = true })
key('n', '<Leader>c', ':Telescope colorscheme<CR>', { noremap = true, silent = true })
