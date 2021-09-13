require('bufferline').setup {
  options = {
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18
  }
}

local key = vim.api.nvim_set_keymap

key('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true})
key('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true})
