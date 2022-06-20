require("telescope").setup{
  defaults = {
        prompt_prefix = "❯ ",
        selection_caret = " "
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          "i"
          -- your custom insert mode mappings
        },
        ["n"] = {
            "jk"
          -- your custom normal mode mappings
        },
      },
    },
  },
}

require("telescope").load_extension "file_browser"
