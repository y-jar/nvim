-- ========================================================================== --
-- PLUGIN: ROSLYN.NVIM
-- Purpose: Modern C# / .NET development using Microsoft's Roslyn engine.
-- ========================================================================== --

return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs", -- Only load when opening a C# file
    config = function()
      require("roslyn").setup({
        -- Point this to where Mason installs roslyn
        exe = vim.fn.stdpath("data") .. "/mason/bin/roslyn",
        args = {
          "--logLevel=Information",
          "--extensionLogDirectory=" .. vim.fn.stdpath("cache") .. "/roslyn",
        },
        -- Integrate with your existing blink.cmp capabilities
        config = {
          capabilities = require("blink.cmp").get_lsp_capabilities(),
        },
      })
    end,
  },
}