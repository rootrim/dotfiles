require("nvchad.configs.lspconfig").defaults()
local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers =
  { "html", "cssls", "clangd", "pyright", "ruff_lsp", "hyprls", "bashls", "markdown_oxide", "arduino_language_server" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
