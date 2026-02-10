-- ========================================================================== --
-- PLUGIN: TREESITTER (The "Eyes")
-- This provides high-performance syntax highlighting and code understanding.
-- It makes Neovim understand the actual structure of your code.
-- ========================================================================== --

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        -- A list of parser names to install. "all" is an option but can be heavy.
        ensure_installed = { 
          "lua", "python", "java", "c_sharp", "c", "cpp", 
          "rust", "javascript", "html", "php", "bash" 
        },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        highlight = {
          enable = true,              -- Better colors than standard regex highlighting
          additional_vim_regex_highlighting = false,
        },

        -- Requirement #11.1: Automatic Indentation
        indent = { 
          enable = true               -- Uses Treesitter to determine smart indent logic
        },

        -- Extra: Smart selection (select code blocks based on scope)
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<c-space>",
            node_incremental = "<c-space>",
            scope_incremental = "<c-s>",
            node_decremental = "<M-space>",
          },
        },
      })
    end,
  },
}