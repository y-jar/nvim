-- ========================================================================== --
-- PLUGIN: NVIM-AUTOPAIRS
-- Purpose: Automatically close brackets, quotes, and custom characters.
-- ========================================================================== --

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		local autopairs = require("nvim-autopairs")
		local Rule = require("nvim-autopairs.rule")

		autopairs.setup({
			-- control if auto-pairs should be enabled when attaching to a buffer
			enabled = function(bufnr)
				return true
			end,

			-- Disable in specific buffers (like file explorers or pickers)
			disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input", "neo-tree" },

			-- Don't pair characters when you are recording a macro (prevents glitches)
			disable_in_macro = true,

			-- Check Treesitter to ensure we aren't pairing inside a string or comment
			check_ts = true,

			-- Map the <CR> (Enter) key to setup a new line with indentation
			map_cr = true,

			-- Map the <BS> (Backspace) key to delete the whole pair if empty
			map_bs = true,
		})

		-- ========================================================================
		-- CUSTOM RULES (Requirement: * and <)
		-- ========================================================================
		-- These are not included by default because they can be annoying in
		-- math or pointer-heavy code, we add them here:
		autopairs.add_rules({
			Rule("*", "*"),
			Rule("<", ">"),
		})
	end,
}

