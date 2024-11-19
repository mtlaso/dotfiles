return {
	"williamboman/mason.nvim",
	dependencies = {
		-- uses Mason to ensure installation of user specified LSP servers and will tell nvim-lspconfig what command to use to launch those servers
		"williamboman/mason-lspconfig.nvim",
		-- install automatically anything that isn't a lsp.
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"gopls",
				"biome",
				"emmet_language_server",
				-- "eslint",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"golangci-lint",
				-- { "eslint_d", version = "13.1.2" }, -- Pin version for nextjs
				"biome",
			},
		})
	end,
}
