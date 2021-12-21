--  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓    ▄████▄   ▒█████   ███▄    █  ██▓  █████▒ ▄████ 
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
-- Its mainly about the coc and autocompletion

-- Prerequisites:
-- - Neovim
-- - Whichever Nerd font for icons and other stuff.
-- - vim-plug

--                              
-- PLUGINS
--

vim.cmd [[packadd packer.nvim]]

require('vim_settings')
require('keybinds')
require('colors')
require('airline_config')
require('coc_config')

return require('packer').startup(function()
  use 'ayu-theme/ayu-vim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'luochen1990/rainbow'
  use 'norcalli/nvim-colorizer.lua'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
end)
