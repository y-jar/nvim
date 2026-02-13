-- ========================================================================== --
-- PLUGIN: theme-hub.NVIM
-- Purpose: sued for picking and manageing themes when used or activated.
-- use <Leader> v h for picking a theme
-- ========================================================================== --

return {
	--
	{
		"erl-koenig/theme-hub.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Optional: for themes that use lush (will be notified if a theme requires it)
			-- "rktjmp/lush.nvim"
		},
		config = function()
			require("theme-hub").setup({
				install_dir = vim.fn.stdpath("data") .. "/theme-hub",
				auto_install_on_select = true,
				apply_after_install = true,
				persistent = true,
			})
		end,
	},
}
