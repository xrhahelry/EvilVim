require('nvim_comment').setup({
    create_mappings = false
})

local key = vim.api.nvim_set_keymap

key('n', '<leader>/', ':CommentToggle<CR>',{ noremap = true, silent = true})
key('v', '<leader>/', ':CommentToggle<CR>',{ noremap = true, silent = true})
