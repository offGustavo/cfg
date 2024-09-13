-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

lvim.plugins = {
	"mfussenegger/nvim-jdtls",
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
	},
	{
		"jaeheonji/catppuccin-nvim",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				term_colors = false,
				compile = {
					enabled = false,
					path = vim.fn.stdpath("cache") .. "/catppuccin",
				},
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
				},
				color_overrides = {},
				highlight_overrides = {},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
	  "epwalsh/obsidian.nvim",
	  version = "*",  -- recommended, use latest release instead of latest commit
	  lazy = true,
	  ft = "markdown",
	  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	  -- event = {
	  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	  --   -- refer to `:h file-pattern` for more examples
	  --   "BufReadPre path/to/my-vault/*.md",
	  --   "BufNewFile path/to/my-vault/*.md",
	  -- },
	  dependencies = {
	    -- Required.
	    "nvim-lua/plenary.nvim",
	    -- see below for full list of optional dependencies 👇
	  },
	  opts = {
	    workspaces = {
	      {
	        name = "personal",
	        path = "~/cerebro/",
	      },
	      {
	        name = "work",
	        path = "~/faculdade/",
	      },
	    },
	    -- see below for full list of options 👇
	  },
	}
}

-- CONFIG

-- Colors Colorscheme
lvim.transparent_window = false
--lvim.colorscheme = 'tokyonight'
local auto_theme_custom = require("lualine.themes.tokyonight")
auto_theme_custom.normal.c.bg = "none"
-- auto_theme_custom.normal.b.bg = 'none'
auto_theme_custom.normal.b.fg = "NormalNC"
lvim.builtin.lualine.options.theme = auto_theme_custom

-- lualine sections
lvim.builtin.lualine.style = "lvim"
lvim.builtin.lualine.sections.lualine_a = { "mode" }
-- lvim.builtin.lualine.sections.lualine_b = { "" }
-- lvim.builtin.lualine.sections.lualine_c = { "" }
lvim.builtin.lualine.sections.lualine_z = { "os.date('%H:%M')" }
-- lvim.builtin.lualine.sections.lualine_x = { "diagnostics", "os.date('%H:%M')" }
-- lvim.builtin.lualine.sections.lualine_y= {""}
-- lvim.builtin.lualine.sections.lualine_z= {""}
--[[
 -- Lualine corlors
local colors = {
  color2  = "#0f1419",
  color3  = "#ffee99",
  color4  = "#e6e1cf",
  color5  = "#14191f",
  color13 = "#b8cc52",
  color10 = "#36a3d9",
  color8  = "#f07178",
  color9  = "#3e4b59",
}


lvim.builtin.lualine.options.theme = {
  normal = {
    c = { fg = colors.color9, bg = "none"},
    a = { fg = colors.color2, bg = colors.color10 },
    b = { fg = colors.color9, bg = "none" },
  },
  insert = {
    a = { fg = colors.color2, bg = colors.color13 },
    b = { fg = colors.color9, bg = "none" },
  },
  visual = {
    a = { fg = colors.color2, bg = colors.color3 },
    b = { fg = colors.color9, bg = "none" },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color8 },
    b = { fg = colors.color9, bg = "none" },
  },
  inactive = {
    c = { fg = colors.color4, bg = colors.color2 },
    a = { fg = colors.color4, bg = colors.color2 },
    b = { fg = colors.color4, bg = colors.color2 },
  },
}
]]

vim.opt.cmdheight = 0
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.o.signcolumn = "no"

-- REMAP
--
-- Flash. vim config
lvim.keys.normal_mode["<leader>ss"] = function()
	require("flash").jump()
end
lvim.keys.normal_mode["<leader>t"] = function()
	require("flash").treesitter()
end

-- Remap Padrao
lvim.keys.normal_mode["<C-q>"] = false

lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["<C-f>"] = "<C-f>zz"
lvim.keys.normal_mode["<C-b>"] = "<C-b>zz"
lvim.keys.normal_mode["n"] = "nzz"
lvim.keys.normal_mode["<S-n>"] = "<S-n>zz"

lvim.keys.visual_mode["<S-j>"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["<S-k>"] = ":m '<-2<CR>gv=gv"

lvim.keys.normal_mode["<Esc>"] = vim.cmd.noh
lvim.keys.normal_mode["<S-l>"] = vim.cmd.bn
lvim.keys.normal_mode["<S-h>"] = vim.cmd.bp

-- Remove a-j and a-k
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

-- Esc Esc to normal mode in terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- lvim.builtin.bufferline.active = false
vim.o.conceallevel = 2
