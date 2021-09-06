local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Native Lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
  
  -- Statusline
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} 

  -- Auto pairs
  use 'windwp/nvim-autopairs' 

  --Themes
  use 'LunarVim/onedarker.nvim'

  -- Snippents
  use 'hrsh7th/vim-vsnip'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Start screen
  use 'glepnir/dashboard-nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)