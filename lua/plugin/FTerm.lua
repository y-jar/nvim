-- ========================================================================== --
-- PLUGIN: FTerm.lua
-- Purpose: Terminal
-- ========================================================================== --

return {
  "numToStr/FTerm.nvim",
  config = function()
    local fterm = require("FTerm")

    fterm.setup({
      border = "rounded", -- Style of the terminal window: 'single', 'double', 'rounded', 'solid'
      dimensions = {
        height = 0.8,   -- 80% of the screen height
        width = 0.8,    -- 80% of the screen width
      },
    })
  end,
}