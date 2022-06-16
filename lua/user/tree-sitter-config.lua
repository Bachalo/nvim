local configs = require'nvim-treesitter.configs'
--[[ local parsers = require'nvim-treesitter.parsers'

function _G.ensure_treesitter_language_installed()
  local lang = parsers.get_buf_lang()
  if parsers.get_parser_configs()[lang] and not parsers.has_parser(lang) then
    vim.schedule_wrap(function()
    vim.cmd("TSInstall "..lang)
    end)()
  end
end 

vim.cmd[[autocmd FileType * :lua ensure_treesitter_language_installed()]]

configs.setup {
  ensure_installed = { "lua", "rust", "dart", "javascript" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
