local key = vim.api.nvim_set_keymap

key('n', '<leader>', ':WhichKey<CR><leader>', {noremap = true, silent = true})
