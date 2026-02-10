-- ========================================================================== --
-- PLUGIN: MASON & MASON-TOOL-INSTALLER
-- Purpose: External tool management (LSPs, Linters, Formatters)
-- ========================================================================== --

return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			-- Initialize Mason
			require("mason").setup({
				-- NEEDED FOR C# (roslyn)
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry", -- This one contains Roslyn
				},
				ui = {
					border = "rounded",
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			-- List of tools for Mason to install automatically
			-- This ensures your environment is consistent across different machines.
			local ensure_installed = {
				-- LSPs (Language Servers)
				"lua-language-server", -- Lua
				"pyright", -- Python
				"clangd", -- C / C++ / C+
				"rust-analyzer", -- Rust
				"typescript-language-server", -- JS/TS
				"html-lsp", -- HTML
				"phpactor", -- PHP
				"bash-language-server", -- Bash/Zsh
				"jdtls", -- Java
				"roslyn", -- C#

				-- Formatters & Linters
				"stylua", -- Lua formatting
				"shfmt", -- Shell formatting
			}

			require("mason-tool-installer").setup({
				ensure_installed = ensure_installed,
				auto_update = true,
				run_on_start = true,
			})
		end,
	},
}

