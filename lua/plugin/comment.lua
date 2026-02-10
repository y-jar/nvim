-- ========================================================================== --
-- PLUGIN: COMMENT.NVIM
-- Purpose: Quick commenting and uncommenting of code
-- ========================================================================== --

return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- Documentation on Keybindings:
      -- NORMAL MODE:
      -- `gcc` - Toggles the current line using linewise comment
      -- `gbc` - Toggles the current line using blockwise comment
      -- `[count]gcc` - Toggles [count] number of lines
      
      -- VISUAL MODE:
      -- `gc` - Toggles the region using linewise comment
      -- `gb` - Toggles the region using blockwise comment
    },
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },
}