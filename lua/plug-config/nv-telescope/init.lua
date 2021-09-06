nnoremap <space>s :Telescope find_files<CR>
nnoremap <space>g :Telescope grep_string<CR>
nnoremap <space>b :Telescope buffers<CR>
local key = vim.api.nvim_set_keymap

key('n', '<Leader>s', ':Telescope find_files<CR>', {noremap = true})
key('n', '<Leader>g', ':Telescope grep_string<CR>', {noremap = true})
key('n', '<Leader>b', ':Telescope buffers<CR>', {noremap = true})
