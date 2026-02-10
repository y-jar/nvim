-- ========================================================================== --
-- PLUGIN: NVIM-JAVA
-- Purpose: Heavyweight Java IDE features (JDTLS, Debugging, Testing)
-- ========================================================================== --

return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      -- Must be called BEFORE lspconfig setup
      require("java").setup()

      -- Connect it to the Neovim 0.11+ LSP engine
      vim.lsp.config("jdtls", {})
      vim.lsp.enable("jdtls")
    end,
  },
}