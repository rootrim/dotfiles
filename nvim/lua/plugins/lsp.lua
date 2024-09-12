return {
  {
    "williamboman/mason.nvim",
    opts = {
      pkgs = {
        "pyright",
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
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
          filetypes = { "python" },
        }
      end
    end,
  },
}
