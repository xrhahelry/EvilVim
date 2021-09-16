local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
  return
end

packer.init {
  git = { clone_timeout = 300 },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
}

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- File Explorer
    use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Native Lsp
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }

    -- Autocompletion
    use 'hrsh7th/nvim-compe'
    use 'nvim-lua/completion-nvim'

    --Trouble
    use {
      "folke/lsp-trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }

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
    use 'NTBBloodbath/doom-one.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'christianchiarulli/nvcode-color-schemes.vim'

    -- Snippents
    use 'hrsh7th/vim-vsnip'

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Telescope
    use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-lua/popup.nvim'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Formatter
    use 'sbdchd/neoformat'
end)
