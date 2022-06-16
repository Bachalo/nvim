--[[
   ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓    ▄████▄   ▒█████   ███▄    █  ██▓  █████▒ ▄███
   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██▒▓██   ▒ ██▒ ▀█▒
  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒██▒▒████ ░▒██░▄▄▄░
  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░██░░▓█▒  ░░▓█  ██▓
  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░██░░▒█░   ░▒▓███▀▒
  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░▓   ▒ ░    ░▒   ▒
  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ▒ ░ ░       ░   ░
     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ░        ░ ░ ░ ▒     ░   ░ ░  ▒ ░ ░ ░   ░ ░   ░
           ░    ░  ░    ░ ░        ░   ░         ░      ░ ░          ░ ░           ░  ░               ░
                                  ░                     ░
]]

-- Prerequisites:
--[[
  - Neovim
  - Whichever Nerd font for icons and other stuff. (I use fira code because of ligatures)
  - Packer.nvim (for plugins managment)
  - BurntSushi/ripgrep (for livegrep support in telescope)
]]

require('user.vim-settings')
require('user.keybinds')
require('user.colors')
require('user.lualine-config')
require('user.nvimtree-config')
require('user.telescope-config')
require('user.comment-nvim-config')
require('user.tree-sitter-config')
require('user.lsp')

return require('packer').startup({function()
  use 'wbthomason/packer.nvim' --> plugin manager itself

  --> Visuals
  use 'ayu-theme/ayu-vim'
  use 'ellisonleao/gruvbox.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    }
  }

  --> Git stuff
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  --> Navigation
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {
        'nvim-lua/plenary.nvim'
      }
    }
  }

  --> Commenting plugin
  use 'numToStr/Comment.nvim'

  --> Syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  --> Flutter Dev specific stuff
  use 'thosakwe/vim-flutter'

  --> Lsp stuff
  use 'neovim/nvim-lspconfig' --> Collection of configurations for the built-in LSP client
  use 'williamboman/nvim-lsp-installer' --> Automatic LSP servers installer

  --> Completions stuff
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  --> Snippets stuff
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
