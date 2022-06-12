--
--  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓    ▄████▄   ▒█████   ███▄    █  ██▓  █████▒ ▄███
--  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██▒▓██   ▒ ██▒ ▀█▒
-- ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒██▒▒████ ░▒██░▄▄▄░
-- ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░██░░▓█▒  ░░▓█  ██▓
-- ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░██░░▒█░   ░▒▓███▀▒
-- ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░▓   ▒ ░    ░▒   ▒
-- ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ▒ ░ ░       ░   ░
--    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ░        ░ ░ ░ ▒     ░   ░ ░  ▒ ░ ░ ░   ░ ░   ░
--          ░    ░  ░    ░ ░        ░   ░         ░      ░ ░          ░ ░           ░  ░               ░
--                                 ░                     ░


-- My (minimalistic) neovim config.
-- Its mainly about the lsp and autocompletion

-- Prerequisites:
--[[
  - Neovim
  - Whichever Nerd font for icons and other stuff. (I use fira code because of ligatures)
  - Packer.nvim (for plugins managment)
  - BurntSushi/ripgrep (for livegrep support in telescope)
]]

--
-- PLUGINS
--

require('user.vim-settings')
require('user.keybinds')
require('user.colors')
require('user.lualine-config')
require('user.nvimtree-config')
require('user.telescope-config')
require('user.comment-nvim-config')
require('user.lsp')
-- require('user.nvimlsp_config')
-- require('user.nvimlspinstaller_config')

return require('packer').startup({function()
  use 'wbthomason/packer.nvim' --> plugin manager itself

  --> Visuals
  use 'ayu-theme/ayu-vim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- use 'luochen1990/rainbow'
  -- use 'norcalli/nvim-colorizer.lua'

  --> Git stuff
  -- use 'tpope/vim-fugitive'
  -- use 'airblade/vim-gitgutter'

  --> Navigation
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --> Commenting plugin
  use 'numToStr/Comment.nvim'

  --> LSP stuff
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } --> treesitter

  use 'neovim/nvim-lspconfig' --> Collection of configurations for the built-in LSP client
  use 'williamboman/nvim-lsp-installer' --> Automatic LSP servers installer



end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
