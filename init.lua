require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('treesitter-config')

-- require 'nvim-treesitter.install'.compilers = { "clang" }

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {'neoclide/coc.nvim', branch = 'release'}

  use "catppuccin/nvim"
  -- use 'folke/tokyonight.nvim'
  -- use 'arcticicestudio/nord-vim'
  -- use 'savq/melange'
  -- use 'sainnhe/sonokai'

  use 'nvim-treesitter/nvim-treesitter' 

  use 'christoomey/vim-tmux-navigator'

  use {
    'nvim-lualine/lualine.nvim',
    require('lualine').setup {
      options = { theme = 'seoul256' }
    }
  }

  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
