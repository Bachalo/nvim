local system_icon = '' --> System icon to display in statusline


local function fileformat()
  return system_icon
end

require('lualine').setup {
  options = {
    disabled_filetypes = { 'packer', 'NvimTree' },
  },
  sections = {
    lualine_x = { 'encoding', {fileformat}, 'filetype' },
  }
}
