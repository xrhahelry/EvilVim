local g = vim.g
local exec = vim.api.nvim_exec

g.neoformat_basic_format_alignment = 1
g.neoformat_basic_format_retab = 1
g.neoformat_basic_format_trim = 1
g.neoformat_only_msg_on_error = 1

exec([[
    augroup fmt
      autocmd!
      autocmd BufWritePre * undojoin | Neoformat
    augroup END
]], false)
