-- ┌───────────────────────────┐
-- │                           │
-- │                           │
-- │       This is My          │
-- │       NeoVim Config!      │
-- │                           │
-- │                           │
-- │                           │
-- │       Feel free to        │
-- │       use this. or        │
-- │       fork it :3          │
-- │                           │
-- └───────────────────────────┘

-- All of the plugins are housed within the plugin/* directory, so if you want to add a plugin,
-- just make a new file with the plugin name, and add the plugin contents within a return {}

-- leader set (this is for which-key to work when mappings.lua is called)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Manually set a file type to .md
-- I was running into issues with the markdown, this might be redundent
-- vim.filetype.add({
-- 	extension = {
-- 		md = "markdown",
-- 	},
-- })

-- Disables the use of swapfile backup, i dont need this, but if you
-- need more ways to restore progress if it crashes this is what you can use :)
vim.opt.swapfile = false

-- =====================================
-- Package manager (lazy vim)
-- =====================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- The above will check to see if Lazy is present.
-- If it isn't, it'll clone it from Github.

-- =====================================
-- plugin section (within plugin/)
-- =====================================
require("lazy").setup("plugin", opts) -- this loads all plugins within plugin/

-- =====================================
-- Reqs (seprate files within lua/)
-- =====================================
require("core.mappings") -- for mappings like theme switching and enabling and disabling options and entering menus
require("core.options") -- nvim or base plugin options that would go here
require("core.autocmd") --auto cmd stuff (no clue)
