require("bufferline").setup{
  options = {
    mode = "buffers",
    indicator_icon = "▎",
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diogonostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    offsets = {
      {filetype = "NvimTree",
      text_align = "center"}
    },
    show_buffer_default_icon = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    always_show_bufferline = true,
    sort_by = 'insert_at_end',
  }
}


