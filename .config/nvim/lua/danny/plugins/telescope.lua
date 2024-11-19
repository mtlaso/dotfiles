return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"andrew-george/telescope-themes",
		"nvim-lua/popup.nvim",
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.load_extension("fzf")
		telescope.load_extension("themes")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-p>"] = actions.move_selection_previous, -- move to prev result
						["<C-n>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},

			extensions = {
				themes = {
					enable_previewer = true,
					enable_live_preview = true,
					-- all builtin themes are ignored by default
					-- (list) -> provide table of theme names to overwrite builtins list
					ignore = { "default", "desert", "elflord", "habamax" },
					-- (table)
					-- (boolean) ignore -> toggle ignore light themes
					-- (list) keywords -> list of keywords that would identify as light theme
					light_themes = {
						ignore = true,
						keywords = { "light", "day", "frappe" },
					},

					-- (table)
					-- (boolean) ignore -> toggle ignore dark themes
					-- (list) keywords -> list of keywords that would identify as dark theme
					dark_themes = {
						ignore = false,
						keywords = { "dark", "night", "black" },
					},
					persist = {
						-- enable persisting last theme choice
						enabled = true,

						-- override path to file that execute colorscheme command
						path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
					},
				},
			},
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
				},
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

		keymap.set(
			"n",
			"<leader>the",
			":Telescope themes<CR>",
			{ noremap = true, silent = true, desc = "Theme Switcher" }
		)
	end,
}
