require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = "catppuccin",
    disabled_filetypes = {
      statusline = { 'dashboard', 'NvimTree' },
      winbar = { 'dashboard', 'NvimTree' }
    }
  },
  sections = {
    lualine_a = { 'mode' },
  },
  extensions = { 'fugitive' }
}
