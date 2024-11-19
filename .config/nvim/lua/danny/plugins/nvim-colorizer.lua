-- In nvim-colorizer.lua
return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"roobert/tailwindcss-colorizer-cmp.nvim",
	},
	config = function()
		-- Set up standard colorizer
		require("colorizer").setup({
			"*",
			css = { css = true, css_fn = true },
			html = { names = true, rgb_fn = true },
			javascript = { names = true, rgb_fn = true },
			typescript = { names = true, rgb_fn = true },
			jsx = { names = true, rgb_fn = true },
			tsx = { names = true, rgb_fn = true },
		}, {
			RGB = true,
			RRGGBB = true,
			names = true,
			RRGGBBAA = true,
			rgb_fn = true,
			hsl_fn = true,
			css = true,
			css_fn = true,
			mode = "background",
			tailwind = true,
		})

		-- Set up tailwind colorizer for completion
		require("tailwindcss-colorizer-cmp").setup({
			color_square_width = 2,
		})
	end,
}
