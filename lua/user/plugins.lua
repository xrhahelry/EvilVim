local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  use {
    -- Packer can manage itself
    'wbthomason/packer.nvim',

    -- Icons
    'kyazdani42/nvim-web-devicons',

    -- Native Lsp
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',

    -- Autocompletion
    'nvim-lua/completion-nvim',
    'hrsh7th/nvim-compe',

    -- Snippents
    'hrsh7th/vim-vsnip',

    -- Auto pairs
    'windwp/nvim-autopairs',

    -- Telescope
    'nvim-telescope/telescope.nvim',
    "nvim-telescope/telescope-file-browser.nvim",
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Comment
    'terrortylor/nvim-comment',

    -- Which Key
    'folke/which-key.nvim',

    -- Color Scheme
    'marko-cerovac/material.nvim',
    'morhetz/gruvbox',
    'sainnhe/gruvbox-material',
    'rafi/awesome-vim-colorschemes',
    'Mofiqul/dracula.nvim',
    'christianchiarulli/nvcode-color-schemes.vim',

    -- Statusline
    'nvim-lualine/lualine.nvim',

    -- File Explorer
    'kyazdani42/nvim-tree.lua',

    -- Gps
    'SmiteshP/nvim-gps',

    -- Tagbar
    'preservim/tagbar',

    -- Terminal
    'tc50cal/vim-terminal',

    -- Start Screen
    'goolord/alpha-nvim',

    -- Bufferline
    'akinsho/bufferline.nvim',

    -- Lazygit
    'kdheepak/lazygit.nvim',

    -- Autosave
    'Pocco81/AutoSave.nvim',

    -- Git Signs
    'lewis6991/gitsigns.nvim',
    }
end)
