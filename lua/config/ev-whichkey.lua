require("which-key").setup({
    key_labels = {
        ["space"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
        ["<bs>"] = "BSC",
        ["<esc>"] = "ESC",
    },
    window = {
      border = "shadow",
       margin = {1,0,1,0},
       padding = {2,2,2,2}
    },
    layout = {
        align = "center"
    }
})

local wk = require("which-key")

wk.register({
  s = {
    name = "Splits",
    v = {"<cmd>vsplit<cr>", "vertical split"},
    h = {"<cmd>split<cr>", "horizontal split"},
  },
  t = {
    name = "Telescope",
    c = {"<cmd>Telescope colorscheme<cr>", "change colorscheme"},
    g = {"<cmd>Telescope git_commits<cr>", "view commits"},
    f = {"<cmd>Telescope oldfiles<cr>", "history"},
  },
  w = {
    name = "Window",
    h = {"<C-w>h", "move focus left"},
    j = {"<C-w>j", "move focus down"},
    k = {"<C-w>k", "move focus up"},
    l = {"<C-w>l", "move focus right"},
  },
  b = {
    name = "Buffer",
    k = {"<cmd>bdelete<cr>", "kill buffer"},
    n = {"<cmd>bnext<cr>", "next buffer"},
    p = {"<cmd>bprevious<cr>", "previous buffer"},
    l = {"<cmd>Telescope buffers<cr>", "list buffers"},
  },
  o = {
    name = "Open",
    f = {"<cmd>NvimTreeToggle<cr>", "file explorere"},
  }
}, {prefix = "<leader>"})
