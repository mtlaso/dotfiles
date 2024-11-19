return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{ "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
	{ "rebelot/kanagawa.nvim", name = "kanagawa", lazy = false, priority = 1000 },
	{ "EdenEast/nightfox.nvim", name = "nightfox", lazy = false, priority = 1000 },
	{
		"scottmckendry/cyberdream.nvim",
		name = "cyberdream",
		lazy = false,
		priority = 1000,
	},
	{
		"zenbones-theme/zenbones.nvim",
		lazy = false,
		priority = 1000,
		dependencies = "rktjmp/lush.nvim",
	},
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
		end,
	},
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			-- vim.cmd("colorscheme gruvbox")
		end,
	},
	{ "projekt0n/github-nvim-theme", name = "github-theme", lazy = false, priority = 1000 },
	{ "olivercederborg/poimandres.nvim", lazy = false, priority = 1000 },
}
