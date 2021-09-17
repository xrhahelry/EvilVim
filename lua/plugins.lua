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

    -- File Explorer
    'kyazdani42/nvim-tree.lua',

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

    --Trouble
      "folke/lsp-trouble.nvim",

    -- Statusline
    'hoob3rt/lualine.nvim',

    -- Bufferline
    'akinsho/bufferline.nvim',

    -- Auto pairs
    'windwp/nvim-autopairs',

    --Themes
    'LunarVim/onedarker.nvim',
    'NTBBloodbath/doom-one.nvim',
    'Mofiqul/dracula.nvim',
    'christianchiarulli/nvcode-color-schemes.vim',

    -- Colorizer
    'norcalli/nvim-colorizer.lua',

    -- Telescope
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Formatter
    'sbdchd/neoformat',

    -- Comment
    'terrortylor/nvim-comment',

    -- Which Key
    'folke/which-key.nvim',

    -- Org Mode
    'kristijanhusak/orgmode.nvim',
    'akinsho/org-bullets.nvim',
    'lukas-reineke/headlines.nvim',
  }
end)
