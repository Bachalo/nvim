local configs = require'nvim-treesitter.configs'

configs.setup {
  ensure_installed = { "lua", "rust", "dart", "javascript" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
