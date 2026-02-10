-- ========================================================================== --
-- PLUGIN: NVIM-TREE.lua
-- Purpose: File explorer
-- ========================================================================== --

-- ==============================================================================
-- NVIM-TREE BASIC KEYBINDINGS (Default Mappings)
-- ==============================================================================
--
-- NAVIGATION:
-- <CR> or l   : Open file or expand directory
-- h           : Collapse directory
-- j / k       : Move cursor down / up
-- P           : Jump to parent directory
-- <C-v>       : Open file in a vertical split
-- <C-x>       : Open file in a horizontal split
--
-- FILE MANIPULATION (IDE Features):
-- a           : CREATE a new file or directory. 
--               - To make a file: type 'filename.txt'
--               - To make a folder: type 'foldername/' (must end with /)
--               - You can do both: 'src/utils/math.lua' (creates all missing dirs)
--
-- r           : RENAME the file/folder under the cursor
-- d           : DELETE the file (will ask for confirmation)
-- x           : CUT file to clipboard
-- c           : COPY file to clipboard
-- p           : PASTE from clipboard (into the directory under cursor)
-- y           : Copy the absolute path of the file to system clipboard
--
-- UI CONTROLS:
-- R           : REFRESH the tree (useful if files were made outside Neovim)
-- H           : Toggle dotfiles (hidden files like .git or .env)
-- q           : Close the tree window
-- ?           : Open the help menu to see ALL available keybinds
-- ==============================================================================

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false, -- Better to load early so the tree is ready on startup
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Adds icons to file types
  },
  config = function()
    require("nvim-tree").setup({
      -- Shows git status icons in the tree (useful since you have gitsigns!)
      git = {
        enable = true,
        ignore = false, -- Set to true if you want to hide files in .gitignore
      },
      -- Changes how the tree looks
      renderer = {
        highlight_git = true, -- Highlight the filename if it has git changes
        indent_markers = {
          enable = true, -- Shows the vertical lines connecting folders
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      -- Controls the behavior of the side window
      view = {
        width = 35,          -- How wide the side bar is
        side = "left",       -- Which side of the screen
        relativenumber = false, -- Can be true if you want to jump via numbers
      },
      -- Useful for when you delete or move files
      filters = {
        dotfiles = false, -- Set to true to hide hidden files like .gitignore
      },
    })

    -- OPTIONAL: Add a keybinding to toggle the tree in your mappings.lua
    -- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
  end,
}