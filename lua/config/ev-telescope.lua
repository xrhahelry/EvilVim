require("telescope").setup{ defaults = {
        prompt_prefix = "❯ ",
        selection_caret = " "
    }
}

local key = vim.api.nvim_set_keymap

key('n', '<Leader>.', ':Telescope find_files<CR>', { noremap = true, silent = true })
key('n', '<Leader>of', ':Telescope file_browser<CR>', { noremap = true, silent = true })
key('n', '<Leader>bl', ':Telescope buffers<CR>', { noremap = true, silent = true })
key('n', '<Leader>tg', ':Telescope git_commits<CR>', { noremap = true, silent = true })
key('n', '<Leader>tc', ':Telescope colorscheme<CR>', { noremap = true, silent = true })
