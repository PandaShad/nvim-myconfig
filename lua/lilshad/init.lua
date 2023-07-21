require("lilshad.remap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", --latest stabke release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Random stuff
  'nvim-treesitter/nvim-treesitter',
	'tpope/vim-fugitive',
	'nvim-tree/nvim-web-devicons',
  'lukas-reineke/indent-blankline.nvim',

	-- LSP config
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      {
				'williamboman/mason.nvim',
				build = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	},

	-- File navigation
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },

  -- Customization
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000
  },
  'nvim-lualine/lualine.nvim',
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
  },
}

local opts = {}

require("lazy").setup(plugins, opts)