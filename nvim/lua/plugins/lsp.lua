return {
  {
    "williamboman/mason.nvim",
    opts = {
      pkgs = {
        "pyright",
        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local config = require "plugins.lsp"
      local on_attach = config.on_attach
      local capabilities = config.capabilities

      local lspconfig = require "lspconfig"
      local servers = {
        "pyright",
        "ruff_lsp",
        "clangd",
        "lua_ls",
      }

      -- Pyright for Python
      lspconfig.pyright.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      -- Ruff (Python linter)
      lspconfig.ruff_lsp.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      -- Clangd for C
      lspconfig.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      -- lua_ls for Lua
      lspconfig.lua_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end,
  },
}
