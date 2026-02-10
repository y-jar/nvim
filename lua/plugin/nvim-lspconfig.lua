-- ========================================================================== --
-- PLUGIN: NVIM-LSPCONFIG (2026 Modern Version)
-- Purpose: Connecting Neovim to Language Servers using the 0.11+ API.
-- ========================================================================== --

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp", -- Provides autocompletion capabilities
    },
    config = function()
      -- Get capabilities from blink.cmp
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- Define your servers and their specific settings
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { checkThirdParty = false },
            },
          },
        },
        pyright = {},
        clangd = {},
        rust_analyzer = {},
        ts_ls = {},
        html = {},
        phpactor = {},
        bashls = {},
      }

      -- THE NEW 0.11+ WAY:
      -- Instead of require('lspconfig').setup(), i now use the core vim.lsp commands.
      for name, config in pairs(servers) do
        -- 1. Merge the capabilities into the server config
        config.capabilities = vim.tbl_deep_extend("force", {}, capabilities, config.capabilities or {})
        
        -- 2. Register the configuration with Neovim's core LSP client
        vim.lsp.config(name, config)
        
        -- 3. Enable the server (this replaces the old .setup() call)
        vim.lsp.enable(name)
      end

      -- ========================================================================
      -- Diagnostic UI (The "Gutter Icons" and "Floating Text")
      -- ========================================================================
      vim.diagnostic.config({
        virtual_text = { prefix = "●" },
        severity_sort = true,
        float = { border = "rounded", source = "always" },
      })

      -- ========================================================================
      -- Keymaps (The "IDE Actions")
      -- This section maps keys like 'gd' to Go To Definition only when an LSP is active.
      -- ========================================================================
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
          end

          map("gd", vim.lsp.buf.definition, "Go to Definition")
          map("gr", vim.lsp.buf.references, "Go to References")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
          map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        end,
      })
    end,
  },
}