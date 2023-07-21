require("catppuccin").setup({
  flavour = "frappe",
  transparent_background = true,
  styles = {
    functions = { "italic" },
    keywords = { "bold" },
  },
  integrations = {
    mason = true,
    neotree = true,
    hop = true,
    nvimtree = true,
    dashboard = true,
    dap = { enabled = true, enable_ui = true },
  }
})
